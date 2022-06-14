// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'landing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LandingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() landingScreen,
    required TResult Function() mainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? landingScreen,
    TResult Function()? mainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? landingScreen,
    TResult Function()? mainScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LandingScreen value) landingScreen,
    required TResult Function(_MainScreen value) mainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LandingScreen value)? landingScreen,
    TResult Function(_MainScreen value)? mainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LandingScreen value)? landingScreen,
    TResult Function(_MainScreen value)? mainScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingStateCopyWith<$Res> {
  factory $LandingStateCopyWith(
          LandingState value, $Res Function(LandingState) then) =
      _$LandingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LandingStateCopyWithImpl<$Res> implements $LandingStateCopyWith<$Res> {
  _$LandingStateCopyWithImpl(this._value, this._then);

  final LandingState _value;
  // ignore: unused_field
  final $Res Function(LandingState) _then;
}

/// @nodoc
abstract class $LandingScreenCopyWith<$Res> {
  factory $LandingScreenCopyWith(
          LandingScreen value, $Res Function(LandingScreen) then) =
      _$LandingScreenCopyWithImpl<$Res>;
}

/// @nodoc
class _$LandingScreenCopyWithImpl<$Res> extends _$LandingStateCopyWithImpl<$Res>
    implements $LandingScreenCopyWith<$Res> {
  _$LandingScreenCopyWithImpl(
      LandingScreen _value, $Res Function(LandingScreen) _then)
      : super(_value, (v) => _then(v as LandingScreen));

  @override
  LandingScreen get _value => super._value as LandingScreen;
}

/// @nodoc

class _$LandingScreen implements LandingScreen {
  const _$LandingScreen();

  @override
  String toString() {
    return 'LandingState.landingScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LandingScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() landingScreen,
    required TResult Function() mainScreen,
  }) {
    return landingScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? landingScreen,
    TResult Function()? mainScreen,
  }) {
    return landingScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? landingScreen,
    TResult Function()? mainScreen,
    required TResult orElse(),
  }) {
    if (landingScreen != null) {
      return landingScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LandingScreen value) landingScreen,
    required TResult Function(_MainScreen value) mainScreen,
  }) {
    return landingScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LandingScreen value)? landingScreen,
    TResult Function(_MainScreen value)? mainScreen,
  }) {
    return landingScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LandingScreen value)? landingScreen,
    TResult Function(_MainScreen value)? mainScreen,
    required TResult orElse(),
  }) {
    if (landingScreen != null) {
      return landingScreen(this);
    }
    return orElse();
  }
}

abstract class LandingScreen implements LandingState {
  const factory LandingScreen() = _$LandingScreen;
}

/// @nodoc
abstract class _$MainScreenCopyWith<$Res> {
  factory _$MainScreenCopyWith(
          _MainScreen value, $Res Function(_MainScreen) then) =
      __$MainScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$MainScreenCopyWithImpl<$Res> extends _$LandingStateCopyWithImpl<$Res>
    implements _$MainScreenCopyWith<$Res> {
  __$MainScreenCopyWithImpl(
      _MainScreen _value, $Res Function(_MainScreen) _then)
      : super(_value, (v) => _then(v as _MainScreen));

  @override
  _MainScreen get _value => super._value as _MainScreen;
}

/// @nodoc

class _$_MainScreen implements _MainScreen {
  const _$_MainScreen();

  @override
  String toString() {
    return 'LandingState.mainScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MainScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() landingScreen,
    required TResult Function() mainScreen,
  }) {
    return mainScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? landingScreen,
    TResult Function()? mainScreen,
  }) {
    return mainScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? landingScreen,
    TResult Function()? mainScreen,
    required TResult orElse(),
  }) {
    if (mainScreen != null) {
      return mainScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LandingScreen value) landingScreen,
    required TResult Function(_MainScreen value) mainScreen,
  }) {
    return mainScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LandingScreen value)? landingScreen,
    TResult Function(_MainScreen value)? mainScreen,
  }) {
    return mainScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LandingScreen value)? landingScreen,
    TResult Function(_MainScreen value)? mainScreen,
    required TResult orElse(),
  }) {
    if (mainScreen != null) {
      return mainScreen(this);
    }
    return orElse();
  }
}

abstract class _MainScreen implements LandingState {
  const factory _MainScreen() = _$_MainScreen;
}
