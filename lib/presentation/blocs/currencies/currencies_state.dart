part of 'currencies_bloc.dart';

@freezed
class CurrenciesState with _$CurrenciesState {
  const factory CurrenciesState.initial() = _CurrenciesInitial;
  const factory CurrenciesState.loading() = _CurrenciesLoading;
  const factory CurrenciesState.loaded(
      {required List<Currency> supportedCurrencies}) = _CurrenciesLoaded;
  const factory CurrenciesState.failed({required String errorMessage}) =
      _CurrenciesFailed;
}
