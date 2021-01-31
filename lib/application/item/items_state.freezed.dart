// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemsStateTearOff {
  const _$ItemsStateTearOff();

// ignore: unused_element
  _ItemsState call(
      {KtList<Item> items,
      @required bool isLoading,
      @required Option<ItemFailure> failureOption}) {
    return _ItemsState(
      items: items,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemsState = _$ItemsStateTearOff();

/// @nodoc
mixin _$ItemsState {
  KtList<Item> get items;
  bool get isLoading;
  Option<ItemFailure> get failureOption;

  @JsonKey(ignore: true)
  $ItemsStateCopyWith<ItemsState> get copyWith;
}

/// @nodoc
abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
          ItemsState value, $Res Function(ItemsState) then) =
      _$ItemsStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Item> items, bool isLoading, Option<ItemFailure> failureOption});
}

/// @nodoc
class _$ItemsStateCopyWithImpl<$Res> implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  final ItemsState _value;
  // ignore: unused_field
  final $Res Function(ItemsState) _then;

  @override
  $Res call({
    Object items = freezed,
    Object isLoading = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as KtList<Item>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<ItemFailure>,
    ));
  }
}

/// @nodoc
abstract class _$ItemsStateCopyWith<$Res> implements $ItemsStateCopyWith<$Res> {
  factory _$ItemsStateCopyWith(
          _ItemsState value, $Res Function(_ItemsState) then) =
      __$ItemsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Item> items, bool isLoading, Option<ItemFailure> failureOption});
}

/// @nodoc
class __$ItemsStateCopyWithImpl<$Res> extends _$ItemsStateCopyWithImpl<$Res>
    implements _$ItemsStateCopyWith<$Res> {
  __$ItemsStateCopyWithImpl(
      _ItemsState _value, $Res Function(_ItemsState) _then)
      : super(_value, (v) => _then(v as _ItemsState));

  @override
  _ItemsState get _value => super._value as _ItemsState;

  @override
  $Res call({
    Object items = freezed,
    Object isLoading = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_ItemsState(
      items: items == freezed ? _value.items : items as KtList<Item>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<ItemFailure>,
    ));
  }
}

/// @nodoc
class _$_ItemsState implements _ItemsState {
  const _$_ItemsState(
      {this.items, @required this.isLoading, @required this.failureOption})
      : assert(isLoading != null),
        assert(failureOption != null);

  @override
  final KtList<Item> items;
  @override
  final bool isLoading;
  @override
  final Option<ItemFailure> failureOption;

  @override
  String toString() {
    return 'ItemsState(items: $items, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOption);

  @JsonKey(ignore: true)
  @override
  _$ItemsStateCopyWith<_ItemsState> get copyWith =>
      __$ItemsStateCopyWithImpl<_ItemsState>(this, _$identity);
}

abstract class _ItemsState implements ItemsState {
  const factory _ItemsState(
      {KtList<Item> items,
      @required bool isLoading,
      @required Option<ItemFailure> failureOption}) = _$_ItemsState;

  @override
  KtList<Item> get items;
  @override
  bool get isLoading;
  @override
  Option<ItemFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$ItemsStateCopyWith<_ItemsState> get copyWith;
}
