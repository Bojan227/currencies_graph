import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates_entity.freezed.dart';

@freezed
class Rate with _$Rate {
  const factory Rate({
    required DateTime date,
    required Map<String, dynamic> rates,
  }) = _Rate;
}

// @freezed
// class RateData with _$RateData {
//   const factory RateData({
//     required double mainLabel,
//     required double converted,
//   }) = _RateData;
// }
