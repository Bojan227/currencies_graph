// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyDto _$$_CurrencyDtoFromJson(Map<String, dynamic> json) =>
    _$_CurrencyDto(
      currencyCode: json['currencyCode'] as String,
      currencyName: json['currencyName'] as String?,
      icon: json['icon'] as String,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      status: json['status'] as String,
      availableFrom: json['availableFrom'] as String,
      availableUntil: json['availableUntil'] as String,
    );

Map<String, dynamic> _$$_CurrencyDtoToJson(_$_CurrencyDto instance) =>
    <String, dynamic>{
      'currencyCode': instance.currencyCode,
      'currencyName': instance.currencyName,
      'icon': instance.icon,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'status': instance.status,
      'availableFrom': instance.availableFrom,
      'availableUntil': instance.availableUntil,
    };
