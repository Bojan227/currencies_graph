// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RateDto _$$_RateDtoFromJson(Map<String, dynamic> json) => _$_RateDto(
      date: json['date'] as String,
      rates: RateDataDto.fromJson(json['rates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RateDtoToJson(_$_RateDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'rates': instance.rates,
    };

_$_RateDataDto _$$_RateDataDtoFromJson(Map<String, dynamic> json) =>
    _$_RateDataDto(
      mainLabel: json['mainLabel'] as String,
      converted: json['converted'] as String,
    );

Map<String, dynamic> _$$_RateDataDtoToJson(_$_RateDataDto instance) =>
    <String, dynamic>{
      'mainLabel': instance.mainLabel,
      'converted': instance.converted,
    };
