import 'package:currencies_graph/data/datasources/currency_remote_datasource.dart';
import 'package:currencies_graph/data/models/currency_response.dart';
import 'package:currencies_graph/domain/entities/currency_entity.dart';
import 'package:currencies_graph/domain/repositories/currency_repository.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  CurrencyRepositoryImpl({required this.currencyRemoteDataSource});

  final CurrencyRemoteDataSource currencyRemoteDataSource;

  @override
  Future<List<Currency>> getSupportedCurrencies() async {
    CurrencyResponse supportedCurrenciesMap =
        await currencyRemoteDataSource.getSupportedCurrencies();

    return currencyMapper(supportedCurrenciesMap);
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
