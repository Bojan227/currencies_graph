part of 'currencies_bloc.dart';

@freezed
class CurrenciesEvent with _$CurrenciesEvent {
  const factory CurrenciesEvent.getSupportedCurrencies() =
      GetSupportedCurrencies;
}
