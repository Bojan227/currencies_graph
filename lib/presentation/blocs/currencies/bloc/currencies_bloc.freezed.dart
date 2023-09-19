// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrenciesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSupportedCurrencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSupportedCurrencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSupportedCurrencies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSupportedCurrencies value)
        getSupportedCurrencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSupportedCurrencies value)? getSupportedCurrencies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSupportedCurrencies value)? getSupportedCurrencies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesEventCopyWith<$Res> {
  factory $CurrenciesEventCopyWith(
          CurrenciesEvent value, $Res Function(CurrenciesEvent) then) =
      _$CurrenciesEventCopyWithImpl<$Res, CurrenciesEvent>;
}

/// @nodoc
class _$CurrenciesEventCopyWithImpl<$Res, $Val extends CurrenciesEvent>
    implements $CurrenciesEventCopyWith<$Res> {
  _$CurrenciesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSupportedCurrenciesCopyWith<$Res> {
  factory _$$GetSupportedCurrenciesCopyWith(_$GetSupportedCurrencies value,
          $Res Function(_$GetSupportedCurrencies) then) =
      __$$GetSupportedCurrenciesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSupportedCurrenciesCopyWithImpl<$Res>
    extends _$CurrenciesEventCopyWithImpl<$Res, _$GetSupportedCurrencies>
    implements _$$GetSupportedCurrenciesCopyWith<$Res> {
  __$$GetSupportedCurrenciesCopyWithImpl(_$GetSupportedCurrencies _value,
      $Res Function(_$GetSupportedCurrencies) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSupportedCurrencies implements GetSupportedCurrencies {
  const _$GetSupportedCurrencies();

  @override
  String toString() {
    return 'CurrenciesEvent.getSupportedCurrencies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSupportedCurrencies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSupportedCurrencies,
  }) {
    return getSupportedCurrencies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSupportedCurrencies,
  }) {
    return getSupportedCurrencies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSupportedCurrencies,
    required TResult orElse(),
  }) {
    if (getSupportedCurrencies != null) {
      return getSupportedCurrencies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSupportedCurrencies value)
        getSupportedCurrencies,
  }) {
    return getSupportedCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSupportedCurrencies value)? getSupportedCurrencies,
  }) {
    return getSupportedCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSupportedCurrencies value)? getSupportedCurrencies,
    required TResult orElse(),
  }) {
    if (getSupportedCurrencies != null) {
      return getSupportedCurrencies(this);
    }
    return orElse();
  }
}

abstract class GetSupportedCurrencies implements CurrenciesEvent {
  const factory GetSupportedCurrencies() = _$GetSupportedCurrencies;
}

/// @nodoc
mixin _$CurrenciesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Currency> supportedCurrencies) loaded,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Currency> supportedCurrencies)? loaded,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Currency> supportedCurrencies)? loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrenciesInitial value) initial,
    required TResult Function(_CurrenciesLoading value) loading,
    required TResult Function(_CurrenciesLoaded value) loaded,
    required TResult Function(_CurrenciesFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrenciesInitial value)? initial,
    TResult? Function(_CurrenciesLoading value)? loading,
    TResult? Function(_CurrenciesLoaded value)? loaded,
    TResult? Function(_CurrenciesFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrenciesInitial value)? initial,
    TResult Function(_CurrenciesLoading value)? loading,
    TResult Function(_CurrenciesLoaded value)? loaded,
    TResult Function(_CurrenciesFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesStateCopyWith<$Res> {
  factory $CurrenciesStateCopyWith(
          CurrenciesState value, $Res Function(CurrenciesState) then) =
      _$CurrenciesStateCopyWithImpl<$Res, CurrenciesState>;
}

/// @nodoc
class _$CurrenciesStateCopyWithImpl<$Res, $Val extends CurrenciesState>
    implements $CurrenciesStateCopyWith<$Res> {
  _$CurrenciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CurrenciesInitialCopyWith<$Res> {
  factory _$$_CurrenciesInitialCopyWith(_$_CurrenciesInitial value,
          $Res Function(_$_CurrenciesInitial) then) =
      __$$_CurrenciesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CurrenciesInitialCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$_CurrenciesInitial>
    implements _$$_CurrenciesInitialCopyWith<$Res> {
  __$$_CurrenciesInitialCopyWithImpl(
      _$_CurrenciesInitial _value, $Res Function(_$_CurrenciesInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CurrenciesInitial implements _CurrenciesInitial {
  const _$_CurrenciesInitial();

  @override
  String toString() {
    return 'CurrenciesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CurrenciesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Currency> supportedCurrencies) loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Currency> supportedCurrencies)? loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Currency> supportedCurrencies)? loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrenciesInitial value) initial,
    required TResult Function(_CurrenciesLoading value) loading,
    required TResult Function(_CurrenciesLoaded value) loaded,
    required TResult Function(_CurrenciesFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrenciesInitial value)? initial,
    TResult? Function(_CurrenciesLoading value)? loading,
    TResult? Function(_CurrenciesLoaded value)? loaded,
    TResult? Function(_CurrenciesFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrenciesInitial value)? initial,
    TResult Function(_CurrenciesLoading value)? loading,
    TResult Function(_CurrenciesLoaded value)? loaded,
    TResult Function(_CurrenciesFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CurrenciesInitial implements CurrenciesState {
  const factory _CurrenciesInitial() = _$_CurrenciesInitial;
}

/// @nodoc
abstract class _$$_CurrenciesLoadingCopyWith<$Res> {
  factory _$$_CurrenciesLoadingCopyWith(_$_CurrenciesLoading value,
          $Res Function(_$_CurrenciesLoading) then) =
      __$$_CurrenciesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CurrenciesLoadingCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$_CurrenciesLoading>
    implements _$$_CurrenciesLoadingCopyWith<$Res> {
  __$$_CurrenciesLoadingCopyWithImpl(
      _$_CurrenciesLoading _value, $Res Function(_$_CurrenciesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CurrenciesLoading implements _CurrenciesLoading {
  const _$_CurrenciesLoading();

  @override
  String toString() {
    return 'CurrenciesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CurrenciesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Currency> supportedCurrencies) loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Currency> supportedCurrencies)? loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Currency> supportedCurrencies)? loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrenciesInitial value) initial,
    required TResult Function(_CurrenciesLoading value) loading,
    required TResult Function(_CurrenciesLoaded value) loaded,
    required TResult Function(_CurrenciesFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrenciesInitial value)? initial,
    TResult? Function(_CurrenciesLoading value)? loading,
    TResult? Function(_CurrenciesLoaded value)? loaded,
    TResult? Function(_CurrenciesFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrenciesInitial value)? initial,
    TResult Function(_CurrenciesLoading value)? loading,
    TResult Function(_CurrenciesLoaded value)? loaded,
    TResult Function(_CurrenciesFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CurrenciesLoading implements CurrenciesState {
  const factory _CurrenciesLoading() = _$_CurrenciesLoading;
}

/// @nodoc
abstract class _$$_CurrenciesLoadedCopyWith<$Res> {
  factory _$$_CurrenciesLoadedCopyWith(
          _$_CurrenciesLoaded value, $Res Function(_$_CurrenciesLoaded) then) =
      __$$_CurrenciesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Currency> supportedCurrencies});
}

/// @nodoc
class __$$_CurrenciesLoadedCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$_CurrenciesLoaded>
    implements _$$_CurrenciesLoadedCopyWith<$Res> {
  __$$_CurrenciesLoadedCopyWithImpl(
      _$_CurrenciesLoaded _value, $Res Function(_$_CurrenciesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportedCurrencies = null,
  }) {
    return _then(_$_CurrenciesLoaded(
      supportedCurrencies: null == supportedCurrencies
          ? _value._supportedCurrencies
          : supportedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc

class _$_CurrenciesLoaded implements _CurrenciesLoaded {
  const _$_CurrenciesLoaded({required final List<Currency> supportedCurrencies})
      : _supportedCurrencies = supportedCurrencies;

  final List<Currency> _supportedCurrencies;
  @override
  List<Currency> get supportedCurrencies {
    if (_supportedCurrencies is EqualUnmodifiableListView)
      return _supportedCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedCurrencies);
  }

  @override
  String toString() {
    return 'CurrenciesState.loaded(supportedCurrencies: $supportedCurrencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrenciesLoaded &&
            const DeepCollectionEquality()
                .equals(other._supportedCurrencies, _supportedCurrencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_supportedCurrencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrenciesLoadedCopyWith<_$_CurrenciesLoaded> get copyWith =>
      __$$_CurrenciesLoadedCopyWithImpl<_$_CurrenciesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Currency> supportedCurrencies) loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loaded(supportedCurrencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Currency> supportedCurrencies)? loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loaded?.call(supportedCurrencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Currency> supportedCurrencies)? loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(supportedCurrencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrenciesInitial value) initial,
    required TResult Function(_CurrenciesLoading value) loading,
    required TResult Function(_CurrenciesLoaded value) loaded,
    required TResult Function(_CurrenciesFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrenciesInitial value)? initial,
    TResult? Function(_CurrenciesLoading value)? loading,
    TResult? Function(_CurrenciesLoaded value)? loaded,
    TResult? Function(_CurrenciesFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrenciesInitial value)? initial,
    TResult Function(_CurrenciesLoading value)? loading,
    TResult Function(_CurrenciesLoaded value)? loaded,
    TResult Function(_CurrenciesFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CurrenciesLoaded implements CurrenciesState {
  const factory _CurrenciesLoaded(
          {required final List<Currency> supportedCurrencies}) =
      _$_CurrenciesLoaded;

  List<Currency> get supportedCurrencies;
  @JsonKey(ignore: true)
  _$$_CurrenciesLoadedCopyWith<_$_CurrenciesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrenciesFailedCopyWith<$Res> {
  factory _$$_CurrenciesFailedCopyWith(
          _$_CurrenciesFailed value, $Res Function(_$_CurrenciesFailed) then) =
      __$$_CurrenciesFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_CurrenciesFailedCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$_CurrenciesFailed>
    implements _$$_CurrenciesFailedCopyWith<$Res> {
  __$$_CurrenciesFailedCopyWithImpl(
      _$_CurrenciesFailed _value, $Res Function(_$_CurrenciesFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_CurrenciesFailed(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrenciesFailed implements _CurrenciesFailed {
  const _$_CurrenciesFailed({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CurrenciesState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrenciesFailed &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrenciesFailedCopyWith<_$_CurrenciesFailed> get copyWith =>
      __$$_CurrenciesFailedCopyWithImpl<_$_CurrenciesFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Currency> supportedCurrencies) loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Currency> supportedCurrencies)? loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Currency> supportedCurrencies)? loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrenciesInitial value) initial,
    required TResult Function(_CurrenciesLoading value) loading,
    required TResult Function(_CurrenciesLoaded value) loaded,
    required TResult Function(_CurrenciesFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrenciesInitial value)? initial,
    TResult? Function(_CurrenciesLoading value)? loading,
    TResult? Function(_CurrenciesLoaded value)? loaded,
    TResult? Function(_CurrenciesFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrenciesInitial value)? initial,
    TResult Function(_CurrenciesLoading value)? loading,
    TResult Function(_CurrenciesLoaded value)? loaded,
    TResult Function(_CurrenciesFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CurrenciesFailed implements CurrenciesState {
  const factory _CurrenciesFailed({required final String errorMessage}) =
      _$_CurrenciesFailed;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_CurrenciesFailedCopyWith<_$_CurrenciesFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
