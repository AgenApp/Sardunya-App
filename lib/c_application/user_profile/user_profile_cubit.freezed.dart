// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserProfile profile) initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserProfile profile) loadingSuccess,
    required TResult Function(UserProfileFailure failure) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({UserProfile profile});

  $UserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_Initial(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.profile);

  @override
  final UserProfile profile;

  @override
  String toString() {
    return 'UserProfileState.initial(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserProfile profile) initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserProfile profile) loadingSuccess,
    required TResult Function(UserProfileFailure failure) loadingFailure,
  }) {
    return initial(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
  }) {
    return initial?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProfileState {
  const factory _Initial(final UserProfile profile) = _$_Initial;

  UserProfile get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
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
    extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.loadingProgress()';
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
    required TResult Function(UserProfile profile) initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserProfile profile) loadingSuccess,
    required TResult Function(UserProfileFailure failure) loadingFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
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
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return loadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgress implements UserProfileState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$LoadingSuccessCopyWith<$Res> {
  factory _$LoadingSuccessCopyWith(
          _LoadingSuccess value, $Res Function(_LoadingSuccess) then) =
      __$LoadingSuccessCopyWithImpl<$Res>;
  $Res call({UserProfile profile});

  $UserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$LoadingSuccessCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$LoadingSuccessCopyWith<$Res> {
  __$LoadingSuccessCopyWithImpl(
      _LoadingSuccess _value, $Res Function(_LoadingSuccess) _then)
      : super(_value, (v) => _then(v as _LoadingSuccess));

  @override
  _LoadingSuccess get _value => super._value as _LoadingSuccess;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_LoadingSuccess(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_LoadingSuccess implements _LoadingSuccess {
  const _$_LoadingSuccess(this.profile);

  @override
  final UserProfile profile;

  @override
  String toString() {
    return 'UserProfileState.loadingSuccess(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadingSuccess &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith =>
      __$LoadingSuccessCopyWithImpl<_LoadingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserProfile profile) initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserProfile profile) loadingSuccess,
    required TResult Function(UserProfileFailure failure) loadingFailure,
  }) {
    return loadingSuccess(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
  }) {
    return loadingSuccess?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadingSuccess implements UserProfileState {
  const factory _LoadingSuccess(final UserProfile profile) = _$_LoadingSuccess;

  UserProfile get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingSuccessCopyWith<_LoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingFailureCopyWith<$Res> {
  factory _$LoadingFailureCopyWith(
          _LoadingFailure value, $Res Function(_LoadingFailure) then) =
      __$LoadingFailureCopyWithImpl<$Res>;
  $Res call({UserProfileFailure failure});

  $UserProfileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadingFailureCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
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
              as UserProfileFailure,
    ));
  }

  @override
  $UserProfileFailureCopyWith<$Res> get failure {
    return $UserProfileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadingFailure implements _LoadingFailure {
  const _$_LoadingFailure(this.failure);

  @override
  final UserProfileFailure failure;

  @override
  String toString() {
    return 'UserProfileState.loadingFailure(failure: $failure)';
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
    required TResult Function(UserProfile profile) initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserProfile profile) loadingSuccess,
    required TResult Function(UserProfileFailure failure) loadingFailure,
  }) {
    return loadingFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
  }) {
    return loadingFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile profile)? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserProfile profile)? loadingSuccess,
    TResult Function(UserProfileFailure failure)? loadingFailure,
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
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadingSuccess value) loadingSuccess,
    required TResult Function(_LoadingFailure value) loadingFailure,
  }) {
    return loadingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
  }) {
    return loadingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadingSuccess value)? loadingSuccess,
    TResult Function(_LoadingFailure value)? loadingFailure,
    required TResult orElse(),
  }) {
    if (loadingFailure != null) {
      return loadingFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadingFailure implements UserProfileState {
  const factory _LoadingFailure(final UserProfileFailure failure) =
      _$_LoadingFailure;

  UserProfileFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingFailureCopyWith<_LoadingFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
