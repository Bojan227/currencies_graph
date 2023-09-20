import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates_model.freezed.dart';
part 'rates_model.g.dart';

@freezed
class RateDto with _$RateDto {
  const factory RateDto({
    required String date,
    required Map<String, dynamic> rates,
  }) = _RateDto;

  factory RateDto.fromJson(Map<String, dynamic> json) =>
      _$RateDtoFromJson(json);
}
