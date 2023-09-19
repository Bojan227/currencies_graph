import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates_model.freezed.dart';
part 'rates_model.g.dart';

@freezed
class RateDto with _$RateDto {
  const factory RateDto({
    required String date,
    required RateDataDto rates,
  }) = _RateDto;

  factory RateDto.fromJson(Map<String, dynamic> json) =>
      _$RateDtoFromJson(json);
}

@freezed
class RateDataDto with _$RateDataDto {
  const factory RateDataDto({
    required String mainLabel,
    required String converted,
  }) = _RateDataDto;

  factory RateDataDto.fromJson(Map<String, dynamic> json) =>
      _$RateDataDtoFromJson(json);
}
