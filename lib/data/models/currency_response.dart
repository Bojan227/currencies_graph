import 'package:currencies_graph/data/models/currency_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_response.freezed.dart';
part 'currency_response.g.dart';

@freezed
class CurrencyResponse with _$CurrencyResponse {
  const factory CurrencyResponse({
    required Map<String, CurrencyDto> supportedCurrenciesMap,
  }) = _CurrencyResponse;

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);
}
