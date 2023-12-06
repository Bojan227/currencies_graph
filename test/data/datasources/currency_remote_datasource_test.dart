import 'package:currencies_graph/data/datasources/currency_remote_datasource.dart';
import 'package:currencies_graph/data/models/currency_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late CurrencyRemoteDataSource currencyRemoteDataSource;
  late Dio dio;
  late DioAdapter dioAdapter;

  const baseUrl = 'https://api.currencyfreaks.com/v2.0/';

  setUp(() {
    dio = Dio(BaseOptions(baseUrl: baseUrl));
    dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    dio.httpClientAdapter = dioAdapter;

    currencyRemoteDataSource = CurrencyRemoteDataSource(dio);
  });

  const currencyResponse = CurrencyResponse(supportedCurrenciesMap: {});

  test('return currency response model', () async {
    dioAdapter.onGet(
      '/supported-currencies',
      (server) => server.reply(200, currencyResponse),
    );

    final result = await currencyRemoteDataSource.getSupportedCurrencies();

    expect(result, currencyResponse);
  });
}
