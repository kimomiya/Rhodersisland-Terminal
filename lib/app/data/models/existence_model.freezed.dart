// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'existence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExistenceModel _$ExistenceModelFromJson(Map<String, dynamic> json) {
  return _ExistenceModel.fromJson(json);
}

/// @nodoc
class _$ExistenceModelTearOff {
  const _$ExistenceModelTearOff();

  _ExistenceModel call({int? closeTime, bool exist = false, int? openTime}) {
    return _ExistenceModel(
      closeTime: closeTime,
      exist: exist,
      openTime: openTime,
    );
  }

  ExistenceModel fromJson(Map<String, Object> json) {
    return ExistenceModel.fromJson(json);
  }
}

/// @nodoc
const $ExistenceModel = _$ExistenceModelTearOff();

/// @nodoc
mixin _$ExistenceModel {
  int? get closeTime => throw _privateConstructorUsedError;
  bool get exist => throw _privateConstructorUsedError;
  int? get openTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExistenceModelCopyWith<ExistenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExistenceModelCopyWith<$Res> {
  factory $ExistenceModelCopyWith(
          ExistenceModel value, $Res Function(ExistenceModel) then) =
      _$ExistenceModelCopyWithImpl<$Res>;
  $Res call({int? closeTime, bool exist, int? openTime});
}

/// @nodoc
class _$ExistenceModelCopyWithImpl<$Res>
    implements $ExistenceModelCopyWith<$Res> {
  _$ExistenceModelCopyWithImpl(this._value, this._then);

  final ExistenceModel _value;
  // ignore: unused_field
  final $Res Function(ExistenceModel) _then;

  @override
  $Res call({
    Object? closeTime = freezed,
    Object? exist = freezed,
    Object? openTime = freezed,
  }) {
    return _then(_value.copyWith(
      closeTime: closeTime == freezed
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as int?,
      exist: exist == freezed
          ? _value.exist
          : exist // ignore: cast_nullable_to_non_nullable
              as bool,
      openTime: openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ExistenceModelCopyWith<$Res>
    implements $ExistenceModelCopyWith<$Res> {
  factory _$ExistenceModelCopyWith(
          _ExistenceModel value, $Res Function(_ExistenceModel) then) =
      __$ExistenceModelCopyWithImpl<$Res>;
  @override
  $Res call({int? closeTime, bool exist, int? openTime});
}

/// @nodoc
class __$ExistenceModelCopyWithImpl<$Res>
    extends _$ExistenceModelCopyWithImpl<$Res>
    implements _$ExistenceModelCopyWith<$Res> {
  __$ExistenceModelCopyWithImpl(
      _ExistenceModel _value, $Res Function(_ExistenceModel) _then)
      : super(_value, (v) => _then(v as _ExistenceModel));

  @override
  _ExistenceModel get _value => super._value as _ExistenceModel;

  @override
  $Res call({
    Object? closeTime = freezed,
    Object? exist = freezed,
    Object? openTime = freezed,
  }) {
    return _then(_ExistenceModel(
      closeTime: closeTime == freezed
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as int?,
      exist: exist == freezed
          ? _value.exist
          : exist // ignore: cast_nullable_to_non_nullable
              as bool,
      openTime: openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExistenceModel implements _ExistenceModel {
  const _$_ExistenceModel({this.closeTime, this.exist = false, this.openTime});

  factory _$_ExistenceModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ExistenceModelFromJson(json);

  @override
  final int? closeTime;
  @JsonKey(defaultValue: false)
  @override
  final bool exist;
  @override
  final int? openTime;

  @override
  String toString() {
    return 'ExistenceModel(closeTime: $closeTime, exist: $exist, openTime: $openTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExistenceModel &&
            (identical(other.closeTime, closeTime) ||
                const DeepCollectionEquality()
                    .equals(other.closeTime, closeTime)) &&
            (identical(other.exist, exist) ||
                const DeepCollectionEquality().equals(other.exist, exist)) &&
            (identical(other.openTime, openTime) ||
                const DeepCollectionEquality()
                    .equals(other.openTime, openTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(closeTime) ^
      const DeepCollectionEquality().hash(exist) ^
      const DeepCollectionEquality().hash(openTime);

  @JsonKey(ignore: true)
  @override
  _$ExistenceModelCopyWith<_ExistenceModel> get copyWith =>
      __$ExistenceModelCopyWithImpl<_ExistenceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExistenceModelToJson(this);
  }
}

abstract class _ExistenceModel implements ExistenceModel {
  const factory _ExistenceModel({int? closeTime, bool exist, int? openTime}) =
      _$_ExistenceModel;

  factory _ExistenceModel.fromJson(Map<String, dynamic> json) =
      _$_ExistenceModel.fromJson;

  @override
  int? get closeTime => throw _privateConstructorUsedError;
  @override
  bool get exist => throw _privateConstructorUsedError;
  @override
  int? get openTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExistenceModelCopyWith<_ExistenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
