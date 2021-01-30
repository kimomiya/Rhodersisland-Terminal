// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'prefetch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PrefetchStateTearOff {
  const _$PrefetchStateTearOff();

// ignore: unused_element
  _PrefetchState call(
      {@required bool isFetching,
      @required bool isCompleted,
      @required Option<ItemFailure> failureOption}) {
    return _PrefetchState(
      isFetching: isFetching,
      isCompleted: isCompleted,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PrefetchState = _$PrefetchStateTearOff();

/// @nodoc
mixin _$PrefetchState {
  bool get isFetching;
  bool get isCompleted;
  Option<ItemFailure> get failureOption;

  @JsonKey(ignore: true)
  $PrefetchStateCopyWith<PrefetchState> get copyWith;
}

/// @nodoc
abstract class $PrefetchStateCopyWith<$Res> {
  factory $PrefetchStateCopyWith(
          PrefetchState value, $Res Function(PrefetchState) then) =
      _$PrefetchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFetching, bool isCompleted, Option<ItemFailure> failureOption});
}

/// @nodoc
class _$PrefetchStateCopyWithImpl<$Res>
    implements $PrefetchStateCopyWith<$Res> {
  _$PrefetchStateCopyWithImpl(this._value, this._then);

  final PrefetchState _value;
  // ignore: unused_field
  final $Res Function(PrefetchState) _then;

  @override
  $Res call({
    Object isFetching = freezed,
    Object isCompleted = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<ItemFailure>,
    ));
  }
}

/// @nodoc
abstract class _$PrefetchStateCopyWith<$Res>
    implements $PrefetchStateCopyWith<$Res> {
  factory _$PrefetchStateCopyWith(
          _PrefetchState value, $Res Function(_PrefetchState) then) =
      __$PrefetchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetching, bool isCompleted, Option<ItemFailure> failureOption});
}

/// @nodoc
class __$PrefetchStateCopyWithImpl<$Res>
    extends _$PrefetchStateCopyWithImpl<$Res>
    implements _$PrefetchStateCopyWith<$Res> {
  __$PrefetchStateCopyWithImpl(
      _PrefetchState _value, $Res Function(_PrefetchState) _then)
      : super(_value, (v) => _then(v as _PrefetchState));

  @override
  _PrefetchState get _value => super._value as _PrefetchState;

  @override
  $Res call({
    Object isFetching = freezed,
    Object isCompleted = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_PrefetchState(
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<ItemFailure>,
    ));
  }
}

/// @nodoc
class _$_PrefetchState implements _PrefetchState {
  const _$_PrefetchState(
      {@required this.isFetching,
      @required this.isCompleted,
      @required this.failureOption})
      : assert(isFetching != null),
        assert(isCompleted != null),
        assert(failureOption != null);

  @override
  final bool isFetching;
  @override
  final bool isCompleted;
  @override
  final Option<ItemFailure> failureOption;

  @override
  String toString() {
    return 'PrefetchState(isFetching: $isFetching, isCompleted: $isCompleted, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrefetchState &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(isCompleted) ^
      const DeepCollectionEquality().hash(failureOption);

  @JsonKey(ignore: true)
  @override
  _$PrefetchStateCopyWith<_PrefetchState> get copyWith =>
      __$PrefetchStateCopyWithImpl<_PrefetchState>(this, _$identity);
}

abstract class _PrefetchState implements PrefetchState {
  const factory _PrefetchState(
      {@required bool isFetching,
      @required bool isCompleted,
      @required Option<ItemFailure> failureOption}) = _$_PrefetchState;

  @override
  bool get isFetching;
  @override
  bool get isCompleted;
  @override
  Option<ItemFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$PrefetchStateCopyWith<_PrefetchState> get copyWith;
}
