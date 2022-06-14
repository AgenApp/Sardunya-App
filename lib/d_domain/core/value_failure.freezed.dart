// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failureValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failureValue) empty,
    required TResult Function(T failureValue, int max) exceedingLenth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue, int max)? exceedingLenth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue, int max)? exceedingLenth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_ExceedingLenth<T> value) exceedingLenth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_ExceedingLenth<T> value)? exceedingLenth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_ExceedingLenth<T> value)? exceedingLenth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failureValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failureValue = freezed,
  }) {
    return _then(_value.copyWith(
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failureValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failureValue = freezed,
  }) {
    return _then(Empty<T>(
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failureValue});

  @override
  final T failureValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failureValue: $failureValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failureValue, failureValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureValue));

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failureValue) empty,
    required TResult Function(T failureValue, int max) exceedingLenth,
  }) {
    return empty(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue, int max)? exceedingLenth,
  }) {
    return empty?.call(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue, int max)? exceedingLenth,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failureValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_ExceedingLenth<T> value) exceedingLenth,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_ExceedingLenth<T> value)? exceedingLenth,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_ExceedingLenth<T> value)? exceedingLenth,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failureValue}) = _$Empty<T>;

  @override
  T get failureValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExceedingLenthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ExceedingLenthCopyWith(
          _ExceedingLenth<T> value, $Res Function(_ExceedingLenth<T>) then) =
      __$ExceedingLenthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failureValue, int max});
}

/// @nodoc
class __$ExceedingLenthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ExceedingLenthCopyWith<T, $Res> {
  __$ExceedingLenthCopyWithImpl(
      _ExceedingLenth<T> _value, $Res Function(_ExceedingLenth<T>) _then)
      : super(_value, (v) => _then(v as _ExceedingLenth<T>));

  @override
  _ExceedingLenth<T> get _value => super._value as _ExceedingLenth<T>;

  @override
  $Res call({
    Object? failureValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_ExceedingLenth<T>(
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingLenth<T> implements _ExceedingLenth<T> {
  const _$_ExceedingLenth({required this.failureValue, required this.max});

  @override
  final T failureValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLenth(failureValue: $failureValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExceedingLenth<T> &&
            const DeepCollectionEquality()
                .equals(other.failureValue, failureValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$ExceedingLenthCopyWith<T, _ExceedingLenth<T>> get copyWith =>
      __$ExceedingLenthCopyWithImpl<T, _ExceedingLenth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failureValue) empty,
    required TResult Function(T failureValue, int max) exceedingLenth,
  }) {
    return exceedingLenth(failureValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue, int max)? exceedingLenth,
  }) {
    return exceedingLenth?.call(failureValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue, int max)? exceedingLenth,
    required TResult orElse(),
  }) {
    if (exceedingLenth != null) {
      return exceedingLenth(failureValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(_ExceedingLenth<T> value) exceedingLenth,
  }) {
    return exceedingLenth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_ExceedingLenth<T> value)? exceedingLenth,
  }) {
    return exceedingLenth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(_ExceedingLenth<T> value)? exceedingLenth,
    required TResult orElse(),
  }) {
    if (exceedingLenth != null) {
      return exceedingLenth(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLenth<T> implements ValueFailure<T> {
  const factory _ExceedingLenth(
      {required final T failureValue,
      required final int max}) = _$_ExceedingLenth<T>;

  @override
  T get failureValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExceedingLenthCopyWith<T, _ExceedingLenth<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
