import 'package:currencies_graph/domain/entities/currency_entity.dart';
import 'package:currencies_graph/domain/repositories/currency_repository.dart';
import 'package:currencies_graph/domain/usecases/get_supported_currencies_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCurrencyRepository extends Mock implements CurrencyRepository {}

void main() {
  late GetSupportedCurrenciesUseCase getSupportedCurrenciesUseCase;
  late CurrencyRepository currencyRepository;

  setUp(() {
    currencyRepository = MockCurrencyRepository();
    getSupportedCurrenciesUseCase = GetSupportedCurrenciesUseCase(
      currencyRepository: currencyRepository,
    );
  });

  const currency =
      Currency(currencyCode: '123', currencyName: 'PKG', icon: 'icon');

  test('should get list of currencies', () async {
    when(
      () => currencyRepository.getSupportedCurrencies(),
    ).thenAnswer(
      (_) async => [currency],
    );
    final result = await getSupportedCurrenciesUseCase.call();
    expect(result, [currency]);
    verify(() => currencyRepository.getSupportedCurrencies());
    verifyNoMoreInteractions(currencyRepository);
  });
}
