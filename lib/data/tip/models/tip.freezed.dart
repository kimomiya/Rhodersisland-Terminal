// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Tip _$TipFromJson(Map<String, dynamic> json) {
  return _Tip.fromJson(json);
}

/// @nodoc
class _$TipTearOff {
  const _$TipTearOff();

// ignore: unused_element
  _Tip call(
      {@JsonKey(defaultValue: '') String tip,
      @JsonKey(defaultValue: '') double weight,
      @JsonKey(defaultValue: '') String category}) {
    return _Tip(
      tip: tip,
      weight: weight,
      category: category,
    );
  }

// ignore: unused_element
  Tip fromJson(Map<String, Object> json) {
    return Tip.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Tip = _$TipTearOff();

/// @nodoc
mixin _$Tip {
  @JsonKey(defaultValue: '')
  String get tip;
  @JsonKey(defaultValue: '')
  double get weight;
  @JsonKey(defaultValue: '')
  String get category;

  Map<String, dynamic> toJson();
  $TipCopyWith<Tip> get copyWith;
}

/// @nodoc
abstract class $TipCopyWith<$Res> {
  factory $TipCopyWith(Tip value, $Res Function(Tip) then) =
      _$TipCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: '') String tip,
      @JsonKey(defaultValue: '') double weight,
      @JsonKey(defaultValue: '') String category});
}

/// @nodoc
class _$TipCopyWithImpl<$Res> implements $TipCopyWith<$Res> {
  _$TipCopyWithImpl(this._value, this._then);

  final Tip _value;
  // ignore: unused_field
  final $Res Function(Tip) _then;

  @override
  $Res call({
    Object tip = freezed,
    Object weight = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      tip: tip == freezed ? _value.tip : tip as String,
      weight: weight == freezed ? _value.weight : weight as double,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
abstract class _$TipCopyWith<$Res> implements $TipCopyWith<$Res> {
  factory _$TipCopyWith(_Tip value, $Res Function(_Tip) then) =
      __$TipCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: '') String tip,
      @JsonKey(defaultValue: '') double weight,
      @JsonKey(defaultValue: '') String category});
}

/// @nodoc
class __$TipCopyWithImpl<$Res> extends _$TipCopyWithImpl<$Res>
    implements _$TipCopyWith<$Res> {
  __$TipCopyWithImpl(_Tip _value, $Res Function(_Tip) _then)
      : super(_value, (v) => _then(v as _Tip));

  @override
  _Tip get _value => super._value as _Tip;

  @override
  $Res call({
    Object tip = freezed,
    Object weight = freezed,
    Object category = freezed,
  }) {
    return _then(_Tip(
      tip: tip == freezed ? _value.tip : tip as String,
      weight: weight == freezed ? _value.weight : weight as double,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Tip implements _Tip {
  const _$_Tip(
      {@JsonKey(defaultValue: '') this.tip,
      @JsonKey(defaultValue: '') this.weight,
      @JsonKey(defaultValue: '') this.category});

  factory _$_Tip.fromJson(Map<String, dynamic> json) => _$_$_TipFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String tip;
  @override
  @JsonKey(defaultValue: '')
  final double weight;
  @override
  @JsonKey(defaultValue: '')
  final String category;

  @override
  String toString() {
    return 'Tip(tip: $tip, weight: $weight, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tip &&
            (identical(other.tip, tip) ||
                const DeepCollectionEquality().equals(other.tip, tip)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tip) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(category);

  @override
  _$TipCopyWith<_Tip> get copyWith =>
      __$TipCopyWithImpl<_Tip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TipToJson(this);
  }
}

abstract class _Tip implements Tip {
  const factory _Tip(
      {@JsonKey(defaultValue: '') String tip,
      @JsonKey(defaultValue: '') double weight,
      @JsonKey(defaultValue: '') String category}) = _$_Tip;

  factory _Tip.fromJson(Map<String, dynamic> json) = _$_Tip.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get tip;
  @override
  @JsonKey(defaultValue: '')
  double get weight;
  @override
  @JsonKey(defaultValue: '')
  String get category;
  @override
  _$TipCopyWith<_Tip> get copyWith;
}
