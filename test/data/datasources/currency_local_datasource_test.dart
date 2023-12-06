import 'package:currencies_graph/core/exceptions.dart';
import 'package:currencies_graph/core/hive/hive_helper.dart';
import 'package:currencies_graph/data/datasources/currency_local_datasource.dart';
import 'package:currencies_graph/data/models/currency_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHive extends Mock implements HiveHelper {}

void main() {
  late CurrencyLocalDataSource currencyLocalDataSource;
  late HiveHelper hiveHelper;

  setUp(() {
    hiveHelper = MockHive();
    currencyLocalDataSource = CurrencyLocalDataSourceImpl(
      hiveHelper: hiveHelper,
    );
  });

  const currencyResponse = CurrencyResponse(supportedCurrenciesMap: {});

  test('returns cached currency response', () async {
    when(() => hiveHelper.getCachedData())
        .thenAnswer((invocation) async => currencyResponse);

    final result = await currencyLocalDataSource.getCachedSupportedCurrencies();

    expect(result, currencyResponse);
  });

  test('throws empty box exceptions', () async {
    when(() => hiveHelper.getCachedData())
        .thenThrow(EmptyBoxException('empty box'));

    final result = currencyLocalDataSource.getCachedSupportedCurrencies;

    expect(() => result(), throwsA(const TypeMatcher<EmptyBoxException>()));
  });
}
