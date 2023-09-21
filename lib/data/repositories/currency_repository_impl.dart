import 'package:currencies_graph/core/exceptions.dart';
import 'package:currencies_graph/data/datasources/currency_local_datasource.dart';
import 'package:currencies_graph/data/datasources/currency_remote_datasource.dart';
import 'package:currencies_graph/data/models/currency_response.dart';
import 'package:currencies_graph/data/models/timeseries_model.dart';
import 'package:currencies_graph/domain/entities/currency_entity.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:currencies_graph/domain/repositories/currency_repository.dart';

Map<String, dynamic> json = {
  "startDate": "2022-06-01",
  "endDate": "2022-06-07",
  "base": "EUR",
  "historicalRatesList": [
    {
      "date": "2022-06-01",
      "rates": {"PKR": "210.58073648790247", "USD": "1.0651300000000001"}
    },
    {
      "date": "2022-06-02",
      "rates": {"PKR": "212.41441993262268", "USD": "1.07504"}
    },
    {
      "date": "2022-06-03",
      "rates": {"PKR": "211.80743999999882", "USD": "1.0719"}
    },
    {
      "date": "2022-06-04",
      "rates": {"PKR": "212.3705498572507", "USD": "1.0719"}
    },
    {
      "date": "2022-06-05",
      "rates": {"PKR": "212.49419555477172", "USD": "1.0725240781655547"}
    },
    {
      "date": "2022-06-06",
      "rates": {"PKR": "213.19503849443953", "USD": "1.06928999144568"}
    },
    {
      "date": "2022-06-07",
      "rates": {"PKR": "215.71624763798502", "USD": "1.0696700000000001"}
    }
  ]
};

class CurrencyRepositoryImpl implements CurrencyRepository {
  CurrencyRepositoryImpl({
    required this.currencyLocalDataSource,
    required this.currencyRemoteDataSource,
  });

  final CurrencyRemoteDataSource currencyRemoteDataSource;
  final CurrencyLocalDataSource currencyLocalDataSource;

  @override
  Future<List<Currency>> getSupportedCurrencies() async {
    try {
      CurrencyResponse cachedCurrencies =
          await currencyLocalDataSource.getCachedSupportedCurrencies();

      return currencyMapper(cachedCurrencies);
    } on EmptyBoxException catch (_) {
      CurrencyResponse supportedCurrenciesMap =
          await currencyRemoteDataSource.getSupportedCurrencies();

      await currencyLocalDataSource
          .cacheSupportedCurrencies(supportedCurrenciesMap);

      return currencyMapper(supportedCurrenciesMap);
    } catch (error) {
      throw Error();
    }
  }

  @override
  Future<List<Rate>> gethistoricalRatesList(
      {required Map<String, dynamic> graphForm}) async {
    // TimeSeriesDto timeSeriesData =
    //     await currencyRemoteDataSource.getTimeSeriesRatesData(
    //         'fa2e594982b644ce924e66a3e87a4d2b',
    //         graphForm['startDate'],
    //         graphForm['endDate'],
    //         graphForm['base'],
    //         'EUR,GBP');

    TimeSeriesDto timeSeriesData = TimeSeriesDto.fromJson(json);

    return Future.value(ratesMapper(timeSeriesData));
  }
}

List<Currency> currencyMapper(CurrencyResponse currenciesMap) {
  List<Currency> currencies = [];

  currenciesMap.supportedCurrenciesMap.forEach(
    (key, value) {
      currencies.add(
        Currency(
          currencyCode: value.currencyCode,
          currencyName: value.currencyName ?? "Not Available",
          icon: value.icon,
        ),
      );
    },
  );

  return currencies;
}

List<Rate> ratesMapper(TimeSeriesDto timeSeriesData) {
  return timeSeriesData.historicalRatesList.map((rate) {
    Map<String, double> convertedMap = {};

    rate.rates.forEach(
      (key, value) {
        double? doubleValue = double.tryParse(value);

        if (doubleValue != null) {
          String formattedCurrencyRate = doubleValue.toStringAsFixed(4);
          convertedMap[key] = double.parse(formattedCurrencyRate);
        }
      },
    );

    return Rate(
      date: DateTime.parse(rate.date),
      rates: convertedMap,
    );
  }).toList();
}
