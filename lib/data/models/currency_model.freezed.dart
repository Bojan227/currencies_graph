// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyDto _$CurrencyDtoFromJson(Map<String, dynamic> json) {
  return _CurrencyDto.fromJson(json);
}

/// @nodoc
mixin _$CurrencyDto {
  String get currencyCode => throw _privateConstructorUsedError;
  String? get currencyName => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get availableFrom => throw _privateConstructorUsedError;
  String get availableUntil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDtoCopyWith<CurrencyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDtoCopyWith<$Res> {
  factory $CurrencyDtoCopyWith(
          CurrencyDto value, $Res Function(CurrencyDto) then) =
      _$CurrencyDtoCopyWithImpl<$Res, CurrencyDto>;
  @useResult
  $Res call(
      {String currencyCode,
      String? currencyName,
      String icon,
      String? countryCode,
      String? countryName,
      String status,
      String availableFrom,
      String availableUntil});
}

/// @nodoc
class _$CurrencyDtoCopyWithImpl<$Res, $Val extends CurrencyDto>
    implements $CurrencyDtoCopyWith<$Res> {
  _$CurrencyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? currencyName = freezed,
    Object? icon = null,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? status = null,
    Object? availableFrom = null,
    Object? availableUntil = null,
  }) {
    return _then(_value.copyWith(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: freezed == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as String,
      availableUntil: null == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyDtoCopyWith<$Res>
    implements $CurrencyDtoCopyWith<$Res> {
  factory _$$_CurrencyDtoCopyWith(
          _$_CurrencyDto value, $Res Function(_$_CurrencyDto) then) =
      __$$_CurrencyDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currencyCode,
      String? currencyName,
      String icon,
      String? countryCode,
      String? countryName,
      String status,
      String availableFrom,
      String availableUntil});
}

/// @nodoc
class __$$_CurrencyDtoCopyWithImpl<$Res>
    extends _$CurrencyDtoCopyWithImpl<$Res, _$_CurrencyDto>
    implements _$$_CurrencyDtoCopyWith<$Res> {
  __$$_CurrencyDtoCopyWithImpl(
      _$_CurrencyDto _value, $Res Function(_$_CurrencyDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? currencyName = freezed,
    Object? icon = null,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? status = null,
    Object? availableFrom = null,
    Object? availableUntil = null,
  }) {
    return _then(_$_CurrencyDto(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: freezed == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as String,
      availableUntil: null == availableUntil
          ? _value.availableUntil
          : availableUntil // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyDto implements _CurrencyDto {
  const _$_CurrencyDto(
      {required this.currencyCode,
      required this.currencyName,
      required this.icon,
      required this.countryCode,
      required this.countryName,
      required this.status,
      required this.availableFrom,
      required this.availableUntil});

  factory _$_CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyDtoFromJson(json);

  @override
  final String currencyCode;
  @override
  final String? currencyName;
  @override
  final String icon;
  @override
  final String? countryCode;
  @override
  final String? countryName;
  @override
  final String status;
  @override
  final String availableFrom;
  @override
  final String availableUntil;

  @override
  String toString() {
    return 'CurrencyDto(currencyCode: $currencyCode, currencyName: $currencyName, icon: $icon, countryCode: $countryCode, countryName: $countryName, status: $status, availableFrom: $availableFrom, availableUntil: $availableUntil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyDto &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.availableFrom, availableFrom) ||
                other.availableFrom == availableFrom) &&
            (identical(other.availableUntil, availableUntil) ||
                other.availableUntil == availableUntil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currencyCode, currencyName, icon,
      countryCode, countryName, status, availableFrom, availableUntil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyDtoCopyWith<_$_CurrencyDto> get copyWith =>
      __$$_CurrencyDtoCopyWithImpl<_$_CurrencyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyDtoToJson(
      this,
    );
  }
}

abstract class _CurrencyDto implements CurrencyDto {
  const factory _CurrencyDto(
      {required final String currencyCode,
      required final String? currencyName,
      required final String icon,
      required final String? countryCode,
      required final String? countryName,
      required final String status,
      required final String availableFrom,
      required final String availableUntil}) = _$_CurrencyDto;

  factory _CurrencyDto.fromJson(Map<String, dynamic> json) =
      _$_CurrencyDto.fromJson;

  @override
  String get currencyCode;
  @override
  String? get currencyName;
  @override
  String get icon;
  @override
  String? get countryCode;
  @override
  String? get countryName;
  @override
  String get status;
  @override
  String get availableFrom;
  @override
  String get availableUntil;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyDtoCopyWith<_$_CurrencyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
