// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GraphFormState {
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> parameters) graphArguments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> parameters)? graphArguments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> parameters)? graphArguments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GraphForm value) graphArguments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GraphForm value)? graphArguments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GraphForm value)? graphArguments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GraphFormStateCopyWith<GraphFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphFormStateCopyWith<$Res> {
  factory $GraphFormStateCopyWith(
          GraphFormState value, $Res Function(GraphFormState) then) =
      _$GraphFormStateCopyWithImpl<$Res, GraphFormState>;
  @useResult
  $Res call({Map<String, dynamic> parameters});
}

/// @nodoc
class _$GraphFormStateCopyWithImpl<$Res, $Val extends GraphFormState>
    implements $GraphFormStateCopyWith<$Res> {
  _$GraphFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphFormCopyWith<$Res>
    implements $GraphFormStateCopyWith<$Res> {
  factory _$$_GraphFormCopyWith(
          _$_GraphForm value, $Res Function(_$_GraphForm) then) =
      __$$_GraphFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> parameters});
}

/// @nodoc
class __$$_GraphFormCopyWithImpl<$Res>
    extends _$GraphFormStateCopyWithImpl<$Res, _$_GraphForm>
    implements _$$_GraphFormCopyWith<$Res> {
  __$$_GraphFormCopyWithImpl(
      _$_GraphForm _value, $Res Function(_$_GraphForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameters = null,
  }) {
    return _then(_$_GraphForm(
      null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_GraphForm implements _GraphForm {
  const _$_GraphForm(final Map<String, dynamic> parameters)
      : _parameters = parameters;

  final Map<String, dynamic> _parameters;
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'GraphFormState.graphArguments(parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphForm &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphFormCopyWith<_$_GraphForm> get copyWith =>
      __$$_GraphFormCopyWithImpl<_$_GraphForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> parameters) graphArguments,
  }) {
    return graphArguments(parameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> parameters)? graphArguments,
  }) {
    return graphArguments?.call(parameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> parameters)? graphArguments,
    required TResult orElse(),
  }) {
    if (graphArguments != null) {
      return graphArguments(parameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GraphForm value) graphArguments,
  }) {
    return graphArguments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GraphForm value)? graphArguments,
  }) {
    return graphArguments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GraphForm value)? graphArguments,
    required TResult orElse(),
  }) {
    if (graphArguments != null) {
      return graphArguments(this);
    }
    return orElse();
  }
}

abstract class _GraphForm implements GraphFormState {
  const factory _GraphForm(final Map<String, dynamic> parameters) =
      _$_GraphForm;

  @override
  Map<String, dynamic> get parameters;
  @override
  @JsonKey(ignore: true)
  _$$_GraphFormCopyWith<_$_GraphForm> get copyWith =>
      throw _privateConstructorUsedError;
}
