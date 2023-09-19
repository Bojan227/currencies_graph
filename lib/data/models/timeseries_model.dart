import 'package:currencies_graph/data/models/rates_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeseries_model.freezed.dart';
part 'timeseries_model.g.dart';

@freezed
class TimeSeriesDto with _$TimeSeriesDto {
  const factory TimeSeriesDto({
    required String startDate,
    required String endDate,
    required String base,
    required List<RateDto> historicalRatesList,
  }) = _TimeSeriesDto;

  factory TimeSeriesDto.fromJson(Map<String, dynamic> json) =>
      _$TimeSeriesDtoFromJson(json);
}
