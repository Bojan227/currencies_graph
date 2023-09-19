// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeseries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSeriesDto _$TimeSeriesDtoFromJson(Map<String, dynamic> json) {
  return _TimeSeriesDto.fromJson(json);
}

/// @nodoc
mixin _$TimeSeriesDto {
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  List<RateDto> get historicalRatesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSeriesDtoCopyWith<TimeSeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSeriesDtoCopyWith<$Res> {
  factory $TimeSeriesDtoCopyWith(
          TimeSeriesDto value, $Res Function(TimeSeriesDto) then) =
      _$TimeSeriesDtoCopyWithImpl<$Res, TimeSeriesDto>;
  @useResult
  $Res call(
      {String startDate,
      String endDate,
      String base,
      List<RateDto> historicalRatesList});
}

/// @nodoc
class _$TimeSeriesDtoCopyWithImpl<$Res, $Val extends TimeSeriesDto>
    implements $TimeSeriesDtoCopyWith<$Res> {
  _$TimeSeriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? base = null,
    Object? historicalRatesList = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      historicalRatesList: null == historicalRatesList
          ? _value.historicalRatesList
          : historicalRatesList // ignore: cast_nullable_to_non_nullable
              as List<RateDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeSeriesDtoCopyWith<$Res>
    implements $TimeSeriesDtoCopyWith<$Res> {
  factory _$$_TimeSeriesDtoCopyWith(
          _$_TimeSeriesDto value, $Res Function(_$_TimeSeriesDto) then) =
      __$$_TimeSeriesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startDate,
      String endDate,
      String base,
      List<RateDto> historicalRatesList});
}

/// @nodoc
class __$$_TimeSeriesDtoCopyWithImpl<$Res>
    extends _$TimeSeriesDtoCopyWithImpl<$Res, _$_TimeSeriesDto>
    implements _$$_TimeSeriesDtoCopyWith<$Res> {
  __$$_TimeSeriesDtoCopyWithImpl(
      _$_TimeSeriesDto _value, $Res Function(_$_TimeSeriesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? base = null,
    Object? historicalRatesList = null,
  }) {
    return _then(_$_TimeSeriesDto(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      historicalRatesList: null == historicalRatesList
          ? _value._historicalRatesList
          : historicalRatesList // ignore: cast_nullable_to_non_nullable
              as List<RateDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeSeriesDto implements _TimeSeriesDto {
  const _$_TimeSeriesDto(
      {required this.startDate,
      required this.endDate,
      required this.base,
      required final List<RateDto> historicalRatesList})
      : _historicalRatesList = historicalRatesList;

  factory _$_TimeSeriesDto.fromJson(Map<String, dynamic> json) =>
      _$$_TimeSeriesDtoFromJson(json);

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String base;
  final List<RateDto> _historicalRatesList;
  @override
  List<RateDto> get historicalRatesList {
    if (_historicalRatesList is EqualUnmodifiableListView)
      return _historicalRatesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historicalRatesList);
  }

  @override
  String toString() {
    return 'TimeSeriesDto(startDate: $startDate, endDate: $endDate, base: $base, historicalRatesList: $historicalRatesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSeriesDto &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.base, base) || other.base == base) &&
            const DeepCollectionEquality()
                .equals(other._historicalRatesList, _historicalRatesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, base,
      const DeepCollectionEquality().hash(_historicalRatesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeSeriesDtoCopyWith<_$_TimeSeriesDto> get copyWith =>
      __$$_TimeSeriesDtoCopyWithImpl<_$_TimeSeriesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeSeriesDtoToJson(
      this,
    );
  }
}

abstract class _TimeSeriesDto implements TimeSeriesDto {
  const factory _TimeSeriesDto(
      {required final String startDate,
      required final String endDate,
      required final String base,
      required final List<RateDto> historicalRatesList}) = _$_TimeSeriesDto;

  factory _TimeSeriesDto.fromJson(Map<String, dynamic> json) =
      _$_TimeSeriesDto.fromJson;

  @override
  String get startDate;
  @override
  String get endDate;
  @override
  String get base;
  @override
  List<RateDto> get historicalRatesList;
  @override
  @JsonKey(ignore: true)
  _$$_TimeSeriesDtoCopyWith<_$_TimeSeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
