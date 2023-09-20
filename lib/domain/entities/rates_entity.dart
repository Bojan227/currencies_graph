import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates_entity.freezed.dart';

@freezed
class Rate with _$Rate {
  const factory Rate({
    required DateTime date,
    required Map<String, double> rates,
  }) = _Rate;
}
