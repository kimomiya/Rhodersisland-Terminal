// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bounds_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoundsModel _$BoundsModelFromJson(Map<String, dynamic> json) {
  return _BoundsModel.fromJson(json);
}

/// @nodoc
class _$BoundsModelTearOff {
  const _$BoundsModelTearOff();

  _BoundsModel call({int? lower, int? upper}) {
    return _BoundsModel(
      lower: lower,
      upper: upper,
    );
  }

  BoundsModel fromJson(Map<String, Object> json) {
    return BoundsModel.fromJson(json);
  }
}

/// @nodoc
const $BoundsModel = _$BoundsModelTearOff();

/// @nodoc
mixin _$BoundsModel {
  int? get lower => throw _privateConstructorUsedError;
  int? get upper => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundsModelCopyWith<BoundsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundsModelCopyWith<$Res> {
  factory $BoundsModelCopyWith(
          BoundsModel value, $Res Function(BoundsModel) then) =
      _$BoundsModelCopyWithImpl<$Res>;
  $Res call({int? lower, int? upper});
}

/// @nodoc
class _$BoundsModelCopyWithImpl<$Res> implements $BoundsModelCopyWith<$Res> {
  _$BoundsModelCopyWithImpl(this._value, this._then);

  final BoundsModel _value;
  // ignore: unused_field
  final $Res Function(BoundsModel) _then;

  @override
  $Res call({
    Object? lower = freezed,
    Object? upper = freezed,
  }) {
    return _then(_value.copyWith(
      lower: lower == freezed
          ? _value.lower
          : lower // ignore: cast_nullable_to_non_nullable
              as int?,
      upper: upper == freezed
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BoundsModelCopyWith<$Res>
    implements $BoundsModelCopyWith<$Res> {
  factory _$BoundsModelCopyWith(
          _BoundsModel value, $Res Function(_BoundsModel) then) =
      __$BoundsModelCopyWithImpl<$Res>;
  @override
  $Res call({int? lower, int? upper});
}

/// @nodoc
class __$BoundsModelCopyWithImpl<$Res> extends _$BoundsModelCopyWithImpl<$Res>
    implements _$BoundsModelCopyWith<$Res> {
  __$BoundsModelCopyWithImpl(
      _BoundsModel _value, $Res Function(_BoundsModel) _then)
      : super(_value, (v) => _then(v as _BoundsModel));

  @override
  _BoundsModel get _value => super._value as _BoundsModel;

  @override
  $Res call({
    Object? lower = freezed,
    Object? upper = freezed,
  }) {
    return _then(_BoundsModel(
      lower: lower == freezed
          ? _value.lower
          : lower // ignore: cast_nullable_to_non_nullable
              as int?,
      upper: upper == freezed
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoundsModel implements _BoundsModel {
  const _$_BoundsModel({this.lower, this.upper});

  factory _$_BoundsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BoundsModelFromJson(json);

  @override
  final int? lower;
  @override
  final int? upper;

  @override
  String toString() {
    return 'BoundsModel(lower: $lower, upper: $upper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoundsModel &&
            (identical(other.lower, lower) ||
                const DeepCollectionEquality().equals(other.lower, lower)) &&
            (identical(other.upper, upper) ||
                const DeepCollectionEquality().equals(other.upper, upper)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lower) ^
      const DeepCollectionEquality().hash(upper);

  @JsonKey(ignore: true)
  @override
  _$BoundsModelCopyWith<_BoundsModel> get copyWith =>
      __$BoundsModelCopyWithImpl<_BoundsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoundsModelToJson(this);
  }
}

abstract class _BoundsModel implements BoundsModel {
  const factory _BoundsModel({int? lower, int? upper}) = _$_BoundsModel;

  factory _BoundsModel.fromJson(Map<String, dynamic> json) =
      _$_BoundsModel.fromJson;

  @override
  int? get lower => throw _privateConstructorUsedError;
  @override
  int? get upper => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoundsModelCopyWith<_BoundsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
