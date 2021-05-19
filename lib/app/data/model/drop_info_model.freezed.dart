// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'drop_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DropInfoModel _$DropInfoModelFromJson(Map<String, dynamic> json) {
  return _DropInfoModel.fromJson(json);
}

/// @nodoc
class _$DropInfoModelTearOff {
  const _$DropInfoModelTearOff();

  _DropInfoModel call(
      {String itemId = '',
      @JsonKey(name: 'dropType') String type = '',
      BoundsModel? bounds}) {
    return _DropInfoModel(
      itemId: itemId,
      type: type,
      bounds: bounds,
    );
  }

  DropInfoModel fromJson(Map<String, Object> json) {
    return DropInfoModel.fromJson(json);
  }
}

/// @nodoc
const $DropInfoModel = _$DropInfoModelTearOff();

/// @nodoc
mixin _$DropInfoModel {
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dropType')
  String get type => throw _privateConstructorUsedError;
  BoundsModel? get bounds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropInfoModelCopyWith<DropInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropInfoModelCopyWith<$Res> {
  factory $DropInfoModelCopyWith(
          DropInfoModel value, $Res Function(DropInfoModel) then) =
      _$DropInfoModelCopyWithImpl<$Res>;
  $Res call(
      {String itemId,
      @JsonKey(name: 'dropType') String type,
      BoundsModel? bounds});

  $BoundsModelCopyWith<$Res>? get bounds;
}

/// @nodoc
class _$DropInfoModelCopyWithImpl<$Res>
    implements $DropInfoModelCopyWith<$Res> {
  _$DropInfoModelCopyWithImpl(this._value, this._then);

  final DropInfoModel _value;
  // ignore: unused_field
  final $Res Function(DropInfoModel) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? type = freezed,
    Object? bounds = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bounds: bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as BoundsModel?,
    ));
  }

  @override
  $BoundsModelCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundsModelCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value));
    });
  }
}

/// @nodoc
abstract class _$DropInfoModelCopyWith<$Res>
    implements $DropInfoModelCopyWith<$Res> {
  factory _$DropInfoModelCopyWith(
          _DropInfoModel value, $Res Function(_DropInfoModel) then) =
      __$DropInfoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String itemId,
      @JsonKey(name: 'dropType') String type,
      BoundsModel? bounds});

  @override
  $BoundsModelCopyWith<$Res>? get bounds;
}

/// @nodoc
class __$DropInfoModelCopyWithImpl<$Res>
    extends _$DropInfoModelCopyWithImpl<$Res>
    implements _$DropInfoModelCopyWith<$Res> {
  __$DropInfoModelCopyWithImpl(
      _DropInfoModel _value, $Res Function(_DropInfoModel) _then)
      : super(_value, (v) => _then(v as _DropInfoModel));

  @override
  _DropInfoModel get _value => super._value as _DropInfoModel;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? type = freezed,
    Object? bounds = freezed,
  }) {
    return _then(_DropInfoModel(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bounds: bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as BoundsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DropInfoModel implements _DropInfoModel {
  const _$_DropInfoModel(
      {this.itemId = '',
      @JsonKey(name: 'dropType') this.type = '',
      this.bounds});

  factory _$_DropInfoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DropInfoModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String itemId;
  @override
  @JsonKey(name: 'dropType')
  final String type;
  @override
  final BoundsModel? bounds;

  @override
  String toString() {
    return 'DropInfoModel(itemId: $itemId, type: $type, bounds: $bounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DropInfoModel &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.bounds, bounds) ||
                const DeepCollectionEquality().equals(other.bounds, bounds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(bounds);

  @JsonKey(ignore: true)
  @override
  _$DropInfoModelCopyWith<_DropInfoModel> get copyWith =>
      __$DropInfoModelCopyWithImpl<_DropInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DropInfoModelToJson(this);
  }
}

abstract class _DropInfoModel implements DropInfoModel {
  const factory _DropInfoModel(
      {String itemId,
      @JsonKey(name: 'dropType') String type,
      BoundsModel? bounds}) = _$_DropInfoModel;

  factory _DropInfoModel.fromJson(Map<String, dynamic> json) =
      _$_DropInfoModel.fromJson;

  @override
  String get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'dropType')
  String get type => throw _privateConstructorUsedError;
  @override
  BoundsModel? get bounds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DropInfoModelCopyWith<_DropInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
