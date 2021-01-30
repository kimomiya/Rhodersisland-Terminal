// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemStateTearOff {
  const _$ItemStateTearOff();

// ignore: unused_element
  _ItemState call(
      {KtList<Item> items,
      @required bool isLoading,
      @required Option<ItemFailure> failureOption}) {
    return _ItemState(
      items: items,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemState = _$ItemStateTearOff();

/// @nodoc
mixin _$ItemState {
  KtList<Item> get items;
  bool get isLoading;
  Option<ItemFailure> get failureOption;

  @JsonKey(ignore: true)
  $ItemStateCopyWith<ItemState> get copyWith;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Item> items, bool isLoading, Option<ItemFailure> failureOption});
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;

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
abstract class _$ItemStateCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory _$ItemStateCopyWith(
          _ItemState value, $Res Function(_ItemState) then) =
      __$ItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Item> items, bool isLoading, Option<ItemFailure> failureOption});
}

/// @nodoc
class __$ItemStateCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$ItemStateCopyWith<$Res> {
  __$ItemStateCopyWithImpl(_ItemState _value, $Res Function(_ItemState) _then)
      : super(_value, (v) => _then(v as _ItemState));

  @override
  _ItemState get _value => super._value as _ItemState;

  @override
  $Res call({
    Object items = freezed,
    Object isLoading = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_ItemState(
      items: items == freezed ? _value.items : items as KtList<Item>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<ItemFailure>,
    ));
  }
}

/// @nodoc
class _$_ItemState implements _ItemState {
  const _$_ItemState(
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
    return 'ItemState(items: $items, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemState &&
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
  _$ItemStateCopyWith<_ItemState> get copyWith =>
      __$ItemStateCopyWithImpl<_ItemState>(this, _$identity);
}

abstract class _ItemState implements ItemState {
  const factory _ItemState(
      {KtList<Item> items,
      @required bool isLoading,
      @required Option<ItemFailure> failureOption}) = _$_ItemState;

  @override
  KtList<Item> get items;
  @override
  bool get isLoading;
  @override
  Option<ItemFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$ItemStateCopyWith<_ItemState> get copyWith;
}
