// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Rate {
  DateTime get date => throw _privateConstructorUsedError;
  RateData get rates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateCopyWith<Rate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateCopyWith<$Res> {
  factory $RateCopyWith(Rate value, $Res Function(Rate) then) =
      _$RateCopyWithImpl<$Res, Rate>;
  @useResult
  $Res call({DateTime date, RateData rates});

  $RateDataCopyWith<$Res> get rates;
}

/// @nodoc
class _$RateCopyWithImpl<$Res, $Val extends Rate>
    implements $RateCopyWith<$Res> {
  _$RateCopyWithImpl(this._value, this._then);

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
              as DateTime,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as RateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RateDataCopyWith<$Res> get rates {
    return $RateDataCopyWith<$Res>(_value.rates, (value) {
      return _then(_value.copyWith(rates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RateCopyWith<$Res> implements $RateCopyWith<$Res> {
  factory _$$_RateCopyWith(_$_Rate value, $Res Function(_$_Rate) then) =
      __$$_RateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, RateData rates});

  @override
  $RateDataCopyWith<$Res> get rates;
}

/// @nodoc
class __$$_RateCopyWithImpl<$Res> extends _$RateCopyWithImpl<$Res, _$_Rate>
    implements _$$_RateCopyWith<$Res> {
  __$$_RateCopyWithImpl(_$_Rate _value, $Res Function(_$_Rate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? rates = null,
  }) {
    return _then(_$_Rate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as RateData,
    ));
  }
}

/// @nodoc

class _$_Rate implements _Rate {
  const _$_Rate({required this.date, required this.rates});

  @override
  final DateTime date;
  @override
  final RateData rates;

  @override
  String toString() {
    return 'Rate(date: $date, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rate &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rates, rates) || other.rates == rates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, rates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RateCopyWith<_$_Rate> get copyWith =>
      __$$_RateCopyWithImpl<_$_Rate>(this, _$identity);
}

abstract class _Rate implements Rate {
  const factory _Rate(
      {required final DateTime date, required final RateData rates}) = _$_Rate;

  @override
  DateTime get date;
  @override
  RateData get rates;
  @override
  @JsonKey(ignore: true)
  _$$_RateCopyWith<_$_Rate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateData {
  double get mainLabel => throw _privateConstructorUsedError;
  double get converted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateDataCopyWith<RateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateDataCopyWith<$Res> {
  factory $RateDataCopyWith(RateData value, $Res Function(RateData) then) =
      _$RateDataCopyWithImpl<$Res, RateData>;
  @useResult
  $Res call({double mainLabel, double converted});
}

/// @nodoc
class _$RateDataCopyWithImpl<$Res, $Val extends RateData>
    implements $RateDataCopyWith<$Res> {
  _$RateDataCopyWithImpl(this._value, this._then);

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
              as double,
      converted: null == converted
          ? _value.converted
          : converted // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RateDataCopyWith<$Res> implements $RateDataCopyWith<$Res> {
  factory _$$_RateDataCopyWith(
          _$_RateData value, $Res Function(_$_RateData) then) =
      __$$_RateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double mainLabel, double converted});
}

/// @nodoc
class __$$_RateDataCopyWithImpl<$Res>
    extends _$RateDataCopyWithImpl<$Res, _$_RateData>
    implements _$$_RateDataCopyWith<$Res> {
  __$$_RateDataCopyWithImpl(
      _$_RateData _value, $Res Function(_$_RateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainLabel = null,
    Object? converted = null,
  }) {
    return _then(_$_RateData(
      mainLabel: null == mainLabel
          ? _value.mainLabel
          : mainLabel // ignore: cast_nullable_to_non_nullable
              as double,
      converted: null == converted
          ? _value.converted
          : converted // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_RateData implements _RateData {
  const _$_RateData({required this.mainLabel, required this.converted});

  @override
  final double mainLabel;
  @override
  final double converted;

  @override
  String toString() {
    return 'RateData(mainLabel: $mainLabel, converted: $converted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RateData &&
            (identical(other.mainLabel, mainLabel) ||
                other.mainLabel == mainLabel) &&
            (identical(other.converted, converted) ||
                other.converted == converted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mainLabel, converted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RateDataCopyWith<_$_RateData> get copyWith =>
      __$$_RateDataCopyWithImpl<_$_RateData>(this, _$identity);
}

abstract class _RateData implements RateData {
  const factory _RateData(
      {required final double mainLabel,
      required final double converted}) = _$_RateData;

  @override
  double get mainLabel;
  @override
  double get converted;
  @override
  @JsonKey(ignore: true)
  _$$_RateDataCopyWith<_$_RateData> get copyWith =>
      throw _privateConstructorUsedError;
}
