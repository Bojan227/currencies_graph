// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyResponse _$$_CurrencyResponseFromJson(Map<String, dynamic> json) =>
    _$_CurrencyResponse(
      supportedCurrenciesMap:
          (json['supportedCurrenciesMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, CurrencyDto.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_CurrencyResponseToJson(_$_CurrencyResponse instance) =>
    <String, dynamic>{
      'supportedCurrenciesMap': instance.supportedCurrenciesMap,
    };
