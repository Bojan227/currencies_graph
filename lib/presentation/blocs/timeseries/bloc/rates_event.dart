part of 'rates_bloc.dart';

@freezed
class RatesEvent with _$RatesEvent {
  const factory RatesEvent.getRatesData(Map<String, dynamic> graphForm) =
      GetRatesData;
}
