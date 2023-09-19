import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyDto with _$CurrencyDto {
  const factory CurrencyDto({
    required String currencyCode,
    required String? currencyName,
    required String icon,
    required String? countryCode,
    required String? countryName,
    required String status,
    required String availableFrom,
    required String availableUntil,
  }) = _CurrencyDto;

  factory CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDtoFromJson(json);
}
