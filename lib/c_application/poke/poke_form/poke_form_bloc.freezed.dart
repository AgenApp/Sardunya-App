// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poke_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Poke poke) initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? constentStr) contentChanced,
    required TResult Function(Duration timeDuration) timeChanced,
    required TResult Function(UniqueId id) saved,
    required TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)
        failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanced value) contentChanced,
    required TResult Function(_TimeChanced value) timeChanced,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeFormEventCopyWith<$Res> {
  factory $PokeFormEventCopyWith(
          PokeFormEvent value, $Res Function(PokeFormEvent) then) =
      _$PokeFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokeFormEventCopyWithImpl<$Res>
    implements $PokeFormEventCopyWith<$Res> {
  _$PokeFormEventCopyWithImpl(this._value, this._then);

  final PokeFormEvent _value;
  // ignore: unused_field
  final $Res Function(PokeFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Poke poke});

  $PokeCopyWith<$Res> get poke;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$PokeFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? poke = freezed,
  }) {
    return _then(_Initialized(
      poke == freezed
          ? _value.poke
          : poke // ignore: cast_nullable_to_non_nullable
              as Poke,
    ));
  }

  @override
  $PokeCopyWith<$Res> get poke {
    return $PokeCopyWith<$Res>(_value.poke, (value) {
      return _then(_value.copyWith(poke: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.poke);

  @override
  final Poke poke;

  @override
  String toString() {
    return 'PokeFormEvent.initialized(poke: $poke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(other.poke, poke));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(poke));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Poke poke) initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? constentStr) contentChanced,
    required TResult Function(Duration timeDuration) timeChanced,
    required TResult Function(UniqueId id) saved,
    required TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)
        failureOrSuccess,
  }) {
    return initialized(poke);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
  }) {
    return initialized?.call(poke);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(poke);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanced value) contentChanced,
    required TResult Function(_TimeChanced value) timeChanced,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PokeFormEvent {
  const factory _Initialized(final Poke poke) = _$_Initialized;

  Poke get poke => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String? titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$PokeFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr);

  @override
  final String? titleStr;

  @override
  String toString() {
    return 'PokeFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TitleChanged &&
            const DeepCollectionEquality().equals(other.titleStr, titleStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(titleStr));

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Poke poke) initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? constentStr) contentChanced,
    required TResult Function(Duration timeDuration) timeChanced,
    required TResult Function(UniqueId id) saved,
    required TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)
        failureOrSuccess,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
  }) {
    return titleChanged?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanced value) contentChanced,
    required TResult Function(_TimeChanced value) timeChanced,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements PokeFormEvent {
  const factory _TitleChanged(final String? titleStr) = _$_TitleChanged;

  String? get titleStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ContentChancedCopyWith<$Res> {
  factory _$ContentChancedCopyWith(
          _ContentChanced value, $Res Function(_ContentChanced) then) =
      __$ContentChancedCopyWithImpl<$Res>;
  $Res call({String? constentStr});
}

/// @nodoc
class __$ContentChancedCopyWithImpl<$Res>
    extends _$PokeFormEventCopyWithImpl<$Res>
    implements _$ContentChancedCopyWith<$Res> {
  __$ContentChancedCopyWithImpl(
      _ContentChanced _value, $Res Function(_ContentChanced) _then)
      : super(_value, (v) => _then(v as _ContentChanced));

  @override
  _ContentChanced get _value => super._value as _ContentChanced;

  @override
  $Res call({
    Object? constentStr = freezed,
  }) {
    return _then(_ContentChanced(
      constentStr == freezed
          ? _value.constentStr
          : constentStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ContentChanced implements _ContentChanced {
  const _$_ContentChanced(this.constentStr);

  @override
  final String? constentStr;

  @override
  String toString() {
    return 'PokeFormEvent.contentChanced(constentStr: $constentStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContentChanced &&
            const DeepCollectionEquality()
                .equals(other.constentStr, constentStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(constentStr));

  @JsonKey(ignore: true)
  @override
  _$ContentChancedCopyWith<_ContentChanced> get copyWith =>
      __$ContentChancedCopyWithImpl<_ContentChanced>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Poke poke) initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? constentStr) contentChanced,
    required TResult Function(Duration timeDuration) timeChanced,
    required TResult Function(UniqueId id) saved,
    required TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)
        failureOrSuccess,
  }) {
    return contentChanced(constentStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
  }) {
    return contentChanced?.call(constentStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
    required TResult orElse(),
  }) {
    if (contentChanced != null) {
      return contentChanced(constentStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanced value) contentChanced,
    required TResult Function(_TimeChanced value) timeChanced,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return contentChanced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return contentChanced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (contentChanced != null) {
      return contentChanced(this);
    }
    return orElse();
  }
}

abstract class _ContentChanced implements PokeFormEvent {
  const factory _ContentChanced(final String? constentStr) = _$_ContentChanced;

  String? get constentStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ContentChancedCopyWith<_ContentChanced> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimeChancedCopyWith<$Res> {
  factory _$TimeChancedCopyWith(
          _TimeChanced value, $Res Function(_TimeChanced) then) =
      __$TimeChancedCopyWithImpl<$Res>;
  $Res call({Duration timeDuration});
}

/// @nodoc
class __$TimeChancedCopyWithImpl<$Res> extends _$PokeFormEventCopyWithImpl<$Res>
    implements _$TimeChancedCopyWith<$Res> {
  __$TimeChancedCopyWithImpl(
      _TimeChanced _value, $Res Function(_TimeChanced) _then)
      : super(_value, (v) => _then(v as _TimeChanced));

  @override
  _TimeChanced get _value => super._value as _TimeChanced;

  @override
  $Res call({
    Object? timeDuration = freezed,
  }) {
    return _then(_TimeChanced(
      timeDuration == freezed
          ? _value.timeDuration
          : timeDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimeChanced implements _TimeChanced {
  const _$_TimeChanced(this.timeDuration);

  @override
  final Duration timeDuration;

  @override
  String toString() {
    return 'PokeFormEvent.timeChanced(timeDuration: $timeDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeChanced &&
            const DeepCollectionEquality()
                .equals(other.timeDuration, timeDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(timeDuration));

  @JsonKey(ignore: true)
  @override
  _$TimeChancedCopyWith<_TimeChanced> get copyWith =>
      __$TimeChancedCopyWithImpl<_TimeChanced>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Poke poke) initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? constentStr) contentChanced,
    required TResult Function(Duration timeDuration) timeChanced,
    required TResult Function(UniqueId id) saved,
    required TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)
        failureOrSuccess,
  }) {
    return timeChanced(timeDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
  }) {
    return timeChanced?.call(timeDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
    required TResult orElse(),
  }) {
    if (timeChanced != null) {
      return timeChanced(timeDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanced value) contentChanced,
    required TResult Function(_TimeChanced value) timeChanced,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return timeChanced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return timeChanced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (timeChanced != null) {
      return timeChanced(this);
    }
    return orElse();
  }
}

abstract class _TimeChanced implements PokeFormEvent {
  const factory _TimeChanced(final Duration timeDuration) = _$_TimeChanced;

  Duration get timeDuration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TimeChancedCopyWith<_TimeChanced> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$PokeFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Saved(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'PokeFormEvent.saved(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Saved &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Poke poke) initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? constentStr) contentChanced,
    required TResult Function(Duration timeDuration) timeChanced,
    required TResult Function(UniqueId id) saved,
    required TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)
        failureOrSuccess,
  }) {
    return saved(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
  }) {
    return saved?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanced value) contentChanced,
    required TResult Function(_TimeChanced value) timeChanced,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PokeFormEvent {
  const factory _Saved(final UniqueId id) = _$_Saved;

  UniqueId get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SavedCopyWith<_Saved> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureOrSuccessCopyWith<$Res> {
  factory _$FailureOrSuccessCopyWith(
          _FailureOrSuccess value, $Res Function(_FailureOrSuccess) then) =
      __$FailureOrSuccessCopyWithImpl<$Res>;
  $Res call(
      {Either<Either<PokeFailure, NotificationFailure>, Unit>?
          failureOrSuccess});
}

/// @nodoc
class __$FailureOrSuccessCopyWithImpl<$Res>
    extends _$PokeFormEventCopyWithImpl<$Res>
    implements _$FailureOrSuccessCopyWith<$Res> {
  __$FailureOrSuccessCopyWithImpl(
      _FailureOrSuccess _value, $Res Function(_FailureOrSuccess) _then)
      : super(_value, (v) => _then(v as _FailureOrSuccess));

  @override
  _FailureOrSuccess get _value => super._value as _FailureOrSuccess;

  @override
  $Res call({
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_FailureOrSuccess(
      failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Either<PokeFailure, NotificationFailure>, Unit>?,
    ));
  }
}

/// @nodoc

class _$_FailureOrSuccess implements _FailureOrSuccess {
  const _$_FailureOrSuccess(this.failureOrSuccess);

  @override
  final Either<Either<PokeFailure, NotificationFailure>, Unit>?
      failureOrSuccess;

  @override
  String toString() {
    return 'PokeFormEvent.failureOrSuccess(failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailureOrSuccess &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$FailureOrSuccessCopyWith<_FailureOrSuccess> get copyWith =>
      __$FailureOrSuccessCopyWithImpl<_FailureOrSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Poke poke) initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? constentStr) contentChanced,
    required TResult Function(Duration timeDuration) timeChanced,
    required TResult Function(UniqueId id) saved,
    required TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)
        failureOrSuccess,
  }) {
    return failureOrSuccess(this.failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
  }) {
    return failureOrSuccess?.call(this.failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Poke poke)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? constentStr)? contentChanced,
    TResult Function(Duration timeDuration)? timeChanced,
    TResult Function(UniqueId id)? saved,
    TResult Function(
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess)?
        failureOrSuccess,
    required TResult orElse(),
  }) {
    if (failureOrSuccess != null) {
      return failureOrSuccess(this.failureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanced value) contentChanced,
    required TResult Function(_TimeChanced value) timeChanced,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return failureOrSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return failureOrSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanced value)? contentChanced,
    TResult Function(_TimeChanced value)? timeChanced,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (failureOrSuccess != null) {
      return failureOrSuccess(this);
    }
    return orElse();
  }
}

abstract class _FailureOrSuccess implements PokeFormEvent {
  const factory _FailureOrSuccess(
      final Either<Either<PokeFailure, NotificationFailure>, Unit>?
          failureOrSuccess) = _$_FailureOrSuccess;

  Either<Either<PokeFailure, NotificationFailure>, Unit>?
      get failureOrSuccess => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureOrSuccessCopyWith<_FailureOrSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokeFormState {
  Poke get poke => throw _privateConstructorUsedError;
  NotificationObject get notification => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<Either<PokeFailure, NotificationFailure>, Unit>>
      get saveSuccessOrFailureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokeFormStateCopyWith<PokeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeFormStateCopyWith<$Res> {
  factory $PokeFormStateCopyWith(
          PokeFormState value, $Res Function(PokeFormState) then) =
      _$PokeFormStateCopyWithImpl<$Res>;
  $Res call(
      {Poke poke,
      NotificationObject notification,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<Either<PokeFailure, NotificationFailure>, Unit>>
          saveSuccessOrFailureOption});

  $PokeCopyWith<$Res> get poke;
  $NotificationObjectCopyWith<$Res> get notification;
}

/// @nodoc
class _$PokeFormStateCopyWithImpl<$Res>
    implements $PokeFormStateCopyWith<$Res> {
  _$PokeFormStateCopyWithImpl(this._value, this._then);

  final PokeFormState _value;
  // ignore: unused_field
  final $Res Function(PokeFormState) _then;

  @override
  $Res call({
    Object? poke = freezed,
    Object? notification = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveSuccessOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      poke: poke == freezed
          ? _value.poke
          : poke // ignore: cast_nullable_to_non_nullable
              as Poke,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationObject,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveSuccessOrFailureOption: saveSuccessOrFailureOption == freezed
          ? _value.saveSuccessOrFailureOption
          : saveSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Either<PokeFailure, NotificationFailure>, Unit>>,
    ));
  }

  @override
  $PokeCopyWith<$Res> get poke {
    return $PokeCopyWith<$Res>(_value.poke, (value) {
      return _then(_value.copyWith(poke: value));
    });
  }

  @override
  $NotificationObjectCopyWith<$Res> get notification {
    return $NotificationObjectCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc
abstract class _$PokeFormStateCopyWith<$Res>
    implements $PokeFormStateCopyWith<$Res> {
  factory _$PokeFormStateCopyWith(
          _PokeFormState value, $Res Function(_PokeFormState) then) =
      __$PokeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Poke poke,
      NotificationObject notification,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<Either<PokeFailure, NotificationFailure>, Unit>>
          saveSuccessOrFailureOption});

  @override
  $PokeCopyWith<$Res> get poke;
  @override
  $NotificationObjectCopyWith<$Res> get notification;
}

/// @nodoc
class __$PokeFormStateCopyWithImpl<$Res>
    extends _$PokeFormStateCopyWithImpl<$Res>
    implements _$PokeFormStateCopyWith<$Res> {
  __$PokeFormStateCopyWithImpl(
      _PokeFormState _value, $Res Function(_PokeFormState) _then)
      : super(_value, (v) => _then(v as _PokeFormState));

  @override
  _PokeFormState get _value => super._value as _PokeFormState;

  @override
  $Res call({
    Object? poke = freezed,
    Object? notification = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveSuccessOrFailureOption = freezed,
  }) {
    return _then(_PokeFormState(
      poke: poke == freezed
          ? _value.poke
          : poke // ignore: cast_nullable_to_non_nullable
              as Poke,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationObject,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveSuccessOrFailureOption: saveSuccessOrFailureOption == freezed
          ? _value.saveSuccessOrFailureOption
          : saveSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Either<PokeFailure, NotificationFailure>, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PokeFormState implements _PokeFormState {
  const _$_PokeFormState(
      {required this.poke,
      required this.notification,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveSuccessOrFailureOption});

  @override
  final Poke poke;
  @override
  final NotificationObject notification;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<Either<PokeFailure, NotificationFailure>, Unit>>
      saveSuccessOrFailureOption;

  @override
  String toString() {
    return 'PokeFormState(poke: $poke, notification: $notification, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveSuccessOrFailureOption: $saveSuccessOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokeFormState &&
            const DeepCollectionEquality().equals(other.poke, poke) &&
            const DeepCollectionEquality()
                .equals(other.notification, notification) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveSuccessOrFailureOption, saveSuccessOrFailureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(poke),
      const DeepCollectionEquality().hash(notification),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveSuccessOrFailureOption));

  @JsonKey(ignore: true)
  @override
  _$PokeFormStateCopyWith<_PokeFormState> get copyWith =>
      __$PokeFormStateCopyWithImpl<_PokeFormState>(this, _$identity);
}

abstract class _PokeFormState implements PokeFormState {
  const factory _PokeFormState(
      {required final Poke poke,
      required final NotificationObject notification,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<
              Either<Either<PokeFailure, NotificationFailure>, Unit>>
          saveSuccessOrFailureOption}) = _$_PokeFormState;

  @override
  Poke get poke => throw _privateConstructorUsedError;
  @override
  NotificationObject get notification => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<Either<PokeFailure, NotificationFailure>, Unit>>
      get saveSuccessOrFailureOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokeFormStateCopyWith<_PokeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
