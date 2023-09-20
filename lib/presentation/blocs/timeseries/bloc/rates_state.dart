part of 'rates_bloc.dart';

@freezed
class RatesState with _$RatesState {
  const factory RatesState.initial() = _Initial;
  const factory RatesState.loading() = _Loading;
  const factory RatesState.loaded({required List<Rate> rates}) = _Loaded;
  const factory RatesState.failed() = _Failed;
}
