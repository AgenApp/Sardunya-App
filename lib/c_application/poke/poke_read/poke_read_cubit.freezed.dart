// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poke_read_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokeReadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Poke> pokeList) loadingSuccess,
    required TResult Function() loadingProgress,
    required TResult Function(PokeFailure failure) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeReadStateCopyWith<$Res> {
  factory $PokeReadStateCopyWith(
          PokeReadState value, $Res Function(PokeReadState) then) =
      _$PokeReadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokeReadStateCopyWithImpl<$Res>
    implements $PokeReadStateCopyWith<$Res> {
  _$PokeReadStateCopyWithImpl(this._value, this._then);

  final PokeReadState _value;
  // ignore: unused_field
  final $Res Function(PokeReadState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PokeReadStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PokeReadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Poke> pokeList) loadingSuccess,
    required TResult Function() loadingProgress,
    required TResult Function(PokeFailure failure) loadingFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PokeReadState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingSuccessCopyWith<$Res> {
  factory _$LoadingSuccessCopyWith(
          _LoadingSuccess value, $Res Function(_LoadingSuccess) then) =
      __$LoadingSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Poke> pokeList});
}

/// @nodoc
class __$LoadingSuccessCopyWithImpl<$Res>
    extends _$PokeReadStateCopyWithImpl<$Res>
    implements _$LoadingSuccessCopyWith<$Res> {
  __$LoadingSuccessCopyWithImpl(
      _LoadingSuccess _value, $Res Function(_LoadingSuccess) _then)
      : super(_value, (v) => _then(v as _LoadingSuccess));

  @override
  _LoadingSuccess get _value => super._value as _LoadingSuccess;

  @override
  $Res call({
    Object? pokeList = freezed,
  }) {
    return _then(_LoadingSuccess(
      pokeList == freezed
          ? _value.pokeList
          : pokeList // ignore: cast_nullable_to_non_nullable
              as KtList<Poke>,
    ));
  }
}

/// @nodoc

class _$_LoadingSuccess implements _LoadingSuccess {
  const _$_LoadingSuccess(this.pokeList);

  @override
  final KtList<Poke> pokeList;

  @override
  String toString() {
    return 'PokeReadState.loadingSuccess(pokeList: $pokeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadingSuccess &&
            const DeepCollectionEquality().equals(other.pokeList, pokeList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokeList));

  @JsonKey(ignore: true)
  @override
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith =>
      __$LoadingSuccessCopyWithImpl<_LoadingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Poke> pokeList) loadingSuccess,
    required TResult Function() loadingProgress,
    required TResult Function(PokeFailure failure) loadingFailure,
  }) {
    return loadingSuccess(pokeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
  }) {
    return loadingSuccess?.call(pokeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(pokeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadingSuccess implements PokeReadState {
  const factory _LoadingSuccess(final KtList<Poke> pokeList) =
      _$_LoadingSuccess;

  KtList<Poke> get pokeList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingProgressCopyWith<$Res> {
  factory _$LoadingProgressCopyWith(
          _LoadingProgress value, $Res Function(_LoadingProgress) then) =
      __$LoadingProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingProgressCopyWithImpl<$Res>
    extends _$PokeReadStateCopyWithImpl<$Res>
    implements _$LoadingProgressCopyWith<$Res> {
  __$LoadingProgressCopyWithImpl(
      _LoadingProgress _value, $Res Function(_LoadingProgress) _then)
      : super(_value, (v) => _then(v as _LoadingProgress));

  @override
  _LoadingProgress get _value => super._value as _LoadingProgress;
}

/// @nodoc

class _$_LoadingProgress implements _LoadingProgress {
  const _$_LoadingProgress();

  @override
  String toString() {
    return 'PokeReadState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Poke> pokeList) loadingSuccess,
    required TResult Function() loadingProgress,
    required TResult Function(PokeFailure failure) loadingFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return loadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgress implements PokeReadState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$LoadingFailureCopyWith<$Res> {
  factory _$LoadingFailureCopyWith(
          _LoadingFailure value, $Res Function(_LoadingFailure) then) =
      __$LoadingFailureCopyWithImpl<$Res>;
  $Res call({PokeFailure failure});

  $PokeFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadingFailureCopyWithImpl<$Res>
    extends _$PokeReadStateCopyWithImpl<$Res>
    implements _$LoadingFailureCopyWith<$Res> {
  __$LoadingFailureCopyWithImpl(
      _LoadingFailure _value, $Res Function(_LoadingFailure) _then)
      : super(_value, (v) => _then(v as _LoadingFailure));

  @override
  _LoadingFailure get _value => super._value as _LoadingFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadingFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PokeFailure,
    ));
  }

  @override
  $PokeFailureCopyWith<$Res> get failure {
    return $PokeFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadingFailure implements _LoadingFailure {
  const _$_LoadingFailure(this.failure);

  @override
  final PokeFailure failure;

  @override
  String toString() {
    return 'PokeReadState.loadingFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadingFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$LoadingFailureCopyWith<_LoadingFailure> get copyWith =>
      __$LoadingFailureCopyWithImpl<_LoadingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Poke> pokeList) loadingSuccess,
    required TResult Function() loadingProgress,
    required TResult Function(PokeFailure failure) loadingFailure,
  }) {
    return loadingFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
  }) {
    return loadingFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Poke> pokeList)? loadingSuccess,
    TResult Function()? loadingProgress,
    TResult Function(PokeFailure failure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return loadingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return loadingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadingFailure implements PokeReadState {
  const factory _LoadingFailure(final PokeFailure failure) = _$_LoadingFailure;

  PokeFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingFailureCopyWith<_LoadingFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
