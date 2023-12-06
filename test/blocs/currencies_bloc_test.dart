import 'package:bloc_test/bloc_test.dart';
import 'package:currencies_graph/domain/entities/currency_entity.dart';
import 'package:currencies_graph/domain/usecases/get_supported_currencies_usecase.dart';
import 'package:currencies_graph/presentation/blocs/currencies/currencies_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUseCase extends Mock implements GetSupportedCurrenciesUseCase {}

void main() {
  late CurrenciesBloc currenciesBloc;
  late GetSupportedCurrenciesUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockUseCase();
    currenciesBloc = CurrenciesBloc(
      getSupportedCurrenciesUseCase: mockUseCase,
    );
  });
  const currency =
      Currency(currencyCode: '123', currencyName: 'PKG', icon: 'icon');

  blocTest(
    'nothing when no event is added',
    build: () => currenciesBloc,
    expect: () => [],
  );

  blocTest(
    'should emit [loading, loaded] on success',
    setUp: () =>
        when(() => mockUseCase.call()).thenAnswer((_) async => [currency]),
    build: () => currenciesBloc,
    act: (bloc) => bloc.add(GetSupportedCurrencies()),
    expect: () => [
      CurrenciesState.loading(),
      CurrenciesState.loaded(supportedCurrencies: [currency])
    ],
  );

  blocTest(
    'should emit [loading, failure] on failure',
    setUp: () =>
        when(() => mockUseCase.call()).thenAnswer((_) async => throw Error()),
    build: () => currenciesBloc,
    act: (bloc) => bloc.add(GetSupportedCurrencies()),
    expect: () => [
      CurrenciesState.loading(),
      CurrenciesState.failed(errorMessage: 'Failed to load currencies')
    ],
  );
}
