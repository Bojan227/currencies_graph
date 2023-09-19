import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_entity.freezed.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required String currencyCode,
    required String currencyName,
    required String icon,
  }) = _Currency;
}
