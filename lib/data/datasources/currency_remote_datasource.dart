import 'package:currencies_graph/data/models/currency_response.dart';
import 'package:currencies_graph/data/models/timeseries_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'currency_remote_datasource.g.dart';

@RestApi(baseUrl: 'https://api.currencyfreaks.com/v2.0/')
abstract class CurrencyRemoteDataSource {
  factory CurrencyRemoteDataSource(Dio dio, {String baseUrl}) =
      _CurrencyRemoteDataSource;

  @GET('/supported-currencies')
  Future<CurrencyResponse> getSupportedCurrencies();

  @GET('/timeseries')
  Future<TimeSeriesDto> getTimeSeriesRatesData(
    @Query('apikey') String apiKey,
    @Query('startDate') String startDate,
    @Query('endDate') String? endDate,
    @Query('base') String? baseCurrencyCode,
    @Query('symbols') String? currencyCodes,
  );
}
