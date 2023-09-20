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
  Map<String, dynamic> get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateDtoCopyWith<RateDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateDtoCopyWith<$Res> {
  factory $RateDtoCopyWith(RateDto value, $Res Function(RateDto) then) =
      _$RateDtoCopyWithImpl<$Res, RateDto>;
  @useResult
  $Res call({String date, Map<String, dynamic> rates});
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
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RateDtoCopyWith<$Res> implements $RateDtoCopyWith<$Res> {
  factory _$$_RateDtoCopyWith(
          _$_RateDto value, $Res Function(_$_RateDto) then) =
      __$$_RateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, Map<String, dynamic> rates});
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
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RateDto implements _RateDto {
  const _$_RateDto(
      {required this.date, required final Map<String, dynamic> rates})
      : _rates = rates;

  factory _$_RateDto.fromJson(Map<String, dynamic> json) =>
      _$$_RateDtoFromJson(json);

  @override
  final String date;
  final Map<String, dynamic> _rates;
  @override
  Map<String, dynamic> get rates {
    if (_rates is EqualUnmodifiableMapView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rates);
  }

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
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_rates));

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
      required final Map<String, dynamic> rates}) = _$_RateDto;

  factory _RateDto.fromJson(Map<String, dynamic> json) = _$_RateDto.fromJson;

  @override
  String get date;
  @override
  Map<String, dynamic> get rates;
  @override
  @JsonKey(ignore: true)
  _$$_RateDtoCopyWith<_$_RateDto> get copyWith =>
      throw _privateConstructorUsedError;
}
