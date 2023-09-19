import 'package:currencies_graph/data/models/currency_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'currency_remote_datasource.g.dart';

@RestApi(baseUrl: 'https://api.currencyfreaks.com/v2.0/')
abstract class CurrencyRemoteDataSource {
  factory CurrencyRemoteDataSource(Dio dio, {String baseUrl}) =
      _CurrencyRemoteDataSource;

  @GET('/supported-currencies')
  Future<CurrencyResponse> getSupportedCurrencies();
}
