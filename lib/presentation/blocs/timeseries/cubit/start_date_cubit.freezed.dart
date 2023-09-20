// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_date_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartDateState {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) selectedDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? selectedDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? selectedDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedDate value) selectedDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedDate value)? selectedDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedDate value)? selectedDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartDateStateCopyWith<StartDateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartDateStateCopyWith<$Res> {
  factory $StartDateStateCopyWith(
          StartDateState value, $Res Function(StartDateState) then) =
      _$StartDateStateCopyWithImpl<$Res, StartDateState>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class _$StartDateStateCopyWithImpl<$Res, $Val extends StartDateState>
    implements $StartDateStateCopyWith<$Res> {
  _$StartDateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectedDateCopyWith<$Res>
    implements $StartDateStateCopyWith<$Res> {
  factory _$$_SelectedDateCopyWith(
          _$_SelectedDate value, $Res Function(_$_SelectedDate) then) =
      __$$_SelectedDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$_SelectedDateCopyWithImpl<$Res>
    extends _$StartDateStateCopyWithImpl<$Res, _$_SelectedDate>
    implements _$$_SelectedDateCopyWith<$Res> {
  __$$_SelectedDateCopyWithImpl(
      _$_SelectedDate _value, $Res Function(_$_SelectedDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$_SelectedDate(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SelectedDate implements _SelectedDate {
  const _$_SelectedDate({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'StartDateState.selectedDate(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedDate &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedDateCopyWith<_$_SelectedDate> get copyWith =>
      __$$_SelectedDateCopyWithImpl<_$_SelectedDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) selectedDate,
  }) {
    return selectedDate(this.selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? selectedDate,
  }) {
    return selectedDate?.call(this.selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? selectedDate,
    required TResult orElse(),
  }) {
    if (selectedDate != null) {
      return selectedDate(this.selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedDate value) selectedDate,
  }) {
    return selectedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedDate value)? selectedDate,
  }) {
    return selectedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedDate value)? selectedDate,
    required TResult orElse(),
  }) {
    if (selectedDate != null) {
      return selectedDate(this);
    }
    return orElse();
  }
}

abstract class _SelectedDate implements StartDateState {
  const factory _SelectedDate({required final DateTime selectedDate}) =
      _$_SelectedDate;

  @override
  DateTime get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedDateCopyWith<_$_SelectedDate> get copyWith =>
      throw _privateConstructorUsedError;
}
