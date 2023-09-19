// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RateDto _$RateDtoFromJson(Map<String, dynamic> json) {
  return _RateDto.fromJson(json);
}

/// @nodoc
mixin _$RateDto {
  String get date => throw _privateConstructorUsedError;
  RateDataDto get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateDtoCopyWith<RateDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateDtoCopyWith<$Res> {
  factory $RateDtoCopyWith(RateDto value, $Res Function(RateDto) then) =
      _$RateDtoCopyWithImpl<$Res, RateDto>;
  @useResult
  $Res call({String date, RateDataDto rates});

  $RateDataDtoCopyWith<$Res> get rates;
}

/// @nodoc
class _$RateDtoCopyWithImpl<$Res, $Val extends RateDto>
    implements $RateDtoCopyWith<$Res> {
  _$RateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as RateDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RateDataDtoCopyWith<$Res> get rates {
    return $RateDataDtoCopyWith<$Res>(_value.rates, (value) {
      return _then(_value.copyWith(rates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RateDtoCopyWith<$Res> implements $RateDtoCopyWith<$Res> {
  factory _$$_RateDtoCopyWith(
          _$_RateDto value, $Res Function(_$_RateDto) then) =
      __$$_RateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, RateDataDto rates});

  @override
  $RateDataDtoCopyWith<$Res> get rates;
}

/// @nodoc
class __$$_RateDtoCopyWithImpl<$Res>
    extends _$RateDtoCopyWithImpl<$Res, _$_RateDto>
    implements _$$_RateDtoCopyWith<$Res> {
  __$$_RateDtoCopyWithImpl(_$_RateDto _value, $Res Function(_$_RateDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? rates = null,
  }) {
    return _then(_$_RateDto(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as RateDataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RateDto implements _RateDto {
  const _$_RateDto({required this.date, required this.rates});

  factory _$_RateDto.fromJson(Map<String, dynamic> json) =>
      _$$_RateDtoFromJson(json);

  @override
  final String date;
  @override
  final RateDataDto rates;

  @override
  String toString() {
    return 'RateDto(date: $date, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RateDto &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rates, rates) || other.rates == rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, rates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RateDtoCopyWith<_$_RateDto> get copyWith =>
      __$$_RateDtoCopyWithImpl<_$_RateDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RateDtoToJson(
      this,
    );
  }
}

abstract class _RateDto implements RateDto {
  const factory _RateDto(
      {required final String date,
      required final RateDataDto rates}) = _$_RateDto;

  factory _RateDto.fromJson(Map<String, dynamic> json) = _$_RateDto.fromJson;

  @override
  String get date;
  @override
  RateDataDto get rates;
  @override
  @JsonKey(ignore: true)
  _$$_RateDtoCopyWith<_$_RateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

RateDataDto _$RateDataDtoFromJson(Map<String, dynamic> json) {
  return _RateDataDto.fromJson(json);
}

/// @nodoc
mixin _$RateDataDto {
  String get mainLabel => throw _privateConstructorUsedError;
  String get converted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateDataDtoCopyWith<RateDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateDataDtoCopyWith<$Res> {
  factory $RateDataDtoCopyWith(
          RateDataDto value, $Res Function(RateDataDto) then) =
      _$RateDataDtoCopyWithImpl<$Res, RateDataDto>;
  @useResult
  $Res call({String mainLabel, String converted});
}

/// @nodoc
class _$RateDataDtoCopyWithImpl<$Res, $Val extends RateDataDto>
    implements $RateDataDtoCopyWith<$Res> {
  _$RateDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainLabel = null,
    Object? converted = null,
  }) {
    return _then(_value.copyWith(
      mainLabel: null == mainLabel
          ? _value.mainLabel
          : mainLabel // ignore: cast_nullable_to_non_nullable
              as String,
      converted: null == converted
          ? _value.converted
          : converted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RateDataDtoCopyWith<$Res>
    implements $RateDataDtoCopyWith<$Res> {
  factory _$$_RateDataDtoCopyWith(
          _$_RateDataDto value, $Res Function(_$_RateDataDto) then) =
      __$$_RateDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mainLabel, String converted});
}

/// @nodoc
class __$$_RateDataDtoCopyWithImpl<$Res>
    extends _$RateDataDtoCopyWithImpl<$Res, _$_RateDataDto>
    implements _$$_RateDataDtoCopyWith<$Res> {
  __$$_RateDataDtoCopyWithImpl(
      _$_RateDataDto _value, $Res Function(_$_RateDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainLabel = null,
    Object? converted = null,
  }) {
    return _then(_$_RateDataDto(
      mainLabel: null == mainLabel
          ? _value.mainLabel
          : mainLabel // ignore: cast_nullable_to_non_nullable
              as String,
      converted: null == converted
          ? _value.converted
          : converted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RateDataDto implements _RateDataDto {
  const _$_RateDataDto({required this.mainLabel, required this.converted});

  factory _$_RateDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_RateDataDtoFromJson(json);

  @override
  final String mainLabel;
  @override
  final String converted;

  @override
  String toString() {
    return 'RateDataDto(mainLabel: $mainLabel, converted: $converted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RateDataDto &&
            (identical(other.mainLabel, mainLabel) ||
                other.mainLabel == mainLabel) &&
            (identical(other.converted, converted) ||
                other.converted == converted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainLabel, converted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RateDataDtoCopyWith<_$_RateDataDto> get copyWith =>
      __$$_RateDataDtoCopyWithImpl<_$_RateDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RateDataDtoToJson(
      this,
    );
  }
}

abstract class _RateDataDto implements RateDataDto {
  const factory _RateDataDto(
      {required final String mainLabel,
      required final String converted}) = _$_RateDataDto;

  factory _RateDataDto.fromJson(Map<String, dynamic> json) =
      _$_RateDataDto.fromJson;

  @override
  String get mainLabel;
  @override
  String get converted;
  @override
  @JsonKey(ignore: true)
  _$$_RateDataDtoCopyWith<_$_RateDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
