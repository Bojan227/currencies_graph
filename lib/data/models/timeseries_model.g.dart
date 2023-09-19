// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeseries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeSeriesDto _$$_TimeSeriesDtoFromJson(Map<String, dynamic> json) =>
    _$_TimeSeriesDto(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      base: json['base'] as String,
      historicalRatesList: (json['historicalRatesList'] as List<dynamic>)
          .map((e) => RateDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TimeSeriesDtoToJson(_$_TimeSeriesDto instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'base': instance.base,
      'historicalRatesList': instance.historicalRatesList,
    };
