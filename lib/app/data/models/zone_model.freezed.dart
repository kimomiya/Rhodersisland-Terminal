// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'zone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZoneModel _$ZoneModelFromJson(Map<String, dynamic> json) {
  return _ZoneModel.fromJson(json);
}

/// @nodoc
class _$ZoneModelTearOff {
  const _$ZoneModelTearOff();

  _ZoneModel call(
      {@JsonKey(name: 'zoneId')
          String id = '',
      @JsonKey(name: 'zoneIndex')
          int? index,
      @JsonKey(name: 'type')
          String type = '',
      @JsonKey(name: 'subType')
          String subType = '',
      @JsonKey(name: 'zoneName')
          String name = '',
      ExistenceModel? existence,
      List<String> stages = const <String>[],
      String background = '',
      @JsonKey(name: 'zoneName_i18n')
          Map<String, String> nameI18n = const <String, String>{}}) {
    return _ZoneModel(
      id: id,
      index: index,
      type: type,
      subType: subType,
      name: name,
      existence: existence,
      stages: stages,
      background: background,
      nameI18n: nameI18n,
    );
  }

  ZoneModel fromJson(Map<String, Object> json) {
    return ZoneModel.fromJson(json);
  }
}

/// @nodoc
const $ZoneModel = _$ZoneModelTearOff();

/// @nodoc
mixin _$ZoneModel {
  @JsonKey(name: 'zoneId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'zoneIndex')
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'subType')
  String get subType => throw _privateConstructorUsedError;
  @JsonKey(name: 'zoneName')
  String get name => throw _privateConstructorUsedError;
  ExistenceModel? get existence => throw _privateConstructorUsedError;
  List<String> get stages => throw _privateConstructorUsedError;
  String get background => throw _privateConstructorUsedError;
  @JsonKey(name: 'zoneName_i18n')
  Map<String, String> get nameI18n => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZoneModelCopyWith<ZoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneModelCopyWith<$Res> {
  factory $ZoneModelCopyWith(ZoneModel value, $Res Function(ZoneModel) then) =
      _$ZoneModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'zoneId') String id,
      @JsonKey(name: 'zoneIndex') int? index,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'subType') String subType,
      @JsonKey(name: 'zoneName') String name,
      ExistenceModel? existence,
      List<String> stages,
      String background,
      @JsonKey(name: 'zoneName_i18n') Map<String, String> nameI18n});

  $ExistenceModelCopyWith<$Res>? get existence;
}

/// @nodoc
class _$ZoneModelCopyWithImpl<$Res> implements $ZoneModelCopyWith<$Res> {
  _$ZoneModelCopyWithImpl(this._value, this._then);

  final ZoneModel _value;
  // ignore: unused_field
  final $Res Function(ZoneModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? name = freezed,
    Object? existence = freezed,
    Object? stages = freezed,
    Object? background = freezed,
    Object? nameI18n = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subType: subType == freezed
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as ExistenceModel?,
      stages: stages == freezed
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }

  @override
  $ExistenceModelCopyWith<$Res>? get existence {
    if (_value.existence == null) {
      return null;
    }

    return $ExistenceModelCopyWith<$Res>(_value.existence!, (value) {
      return _then(_value.copyWith(existence: value));
    });
  }
}

/// @nodoc
abstract class _$ZoneModelCopyWith<$Res> implements $ZoneModelCopyWith<$Res> {
  factory _$ZoneModelCopyWith(
          _ZoneModel value, $Res Function(_ZoneModel) then) =
      __$ZoneModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'zoneId') String id,
      @JsonKey(name: 'zoneIndex') int? index,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'subType') String subType,
      @JsonKey(name: 'zoneName') String name,
      ExistenceModel? existence,
      List<String> stages,
      String background,
      @JsonKey(name: 'zoneName_i18n') Map<String, String> nameI18n});

  @override
  $ExistenceModelCopyWith<$Res>? get existence;
}

/// @nodoc
class __$ZoneModelCopyWithImpl<$Res> extends _$ZoneModelCopyWithImpl<$Res>
    implements _$ZoneModelCopyWith<$Res> {
  __$ZoneModelCopyWithImpl(_ZoneModel _value, $Res Function(_ZoneModel) _then)
      : super(_value, (v) => _then(v as _ZoneModel));

  @override
  _ZoneModel get _value => super._value as _ZoneModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? name = freezed,
    Object? existence = freezed,
    Object? stages = freezed,
    Object? background = freezed,
    Object? nameI18n = freezed,
  }) {
    return _then(_ZoneModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subType: subType == freezed
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as ExistenceModel?,
      stages: stages == freezed
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZoneModel implements _ZoneModel {
  const _$_ZoneModel(
      {@JsonKey(name: 'zoneId')
          this.id = '',
      @JsonKey(name: 'zoneIndex')
          this.index,
      @JsonKey(name: 'type')
          this.type = '',
      @JsonKey(name: 'subType')
          this.subType = '',
      @JsonKey(name: 'zoneName')
          this.name = '',
      this.existence,
      this.stages = const <String>[],
      this.background = '',
      @JsonKey(name: 'zoneName_i18n')
          this.nameI18n = const <String, String>{}});

  factory _$_ZoneModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ZoneModelFromJson(json);

  @override
  @JsonKey(name: 'zoneId')
  final String id;
  @override
  @JsonKey(name: 'zoneIndex')
  final int? index;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'subType')
  final String subType;
  @override
  @JsonKey(name: 'zoneName')
  final String name;
  @override
  final ExistenceModel? existence;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> stages;
  @JsonKey(defaultValue: '')
  @override
  final String background;
  @override
  @JsonKey(name: 'zoneName_i18n')
  final Map<String, String> nameI18n;

  @override
  String toString() {
    return 'ZoneModel(id: $id, index: $index, type: $type, subType: $subType, name: $name, existence: $existence, stages: $stages, background: $background, nameI18n: $nameI18n)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ZoneModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.subType, subType) ||
                const DeepCollectionEquality()
                    .equals(other.subType, subType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.existence, existence) ||
                const DeepCollectionEquality()
                    .equals(other.existence, existence)) &&
            (identical(other.stages, stages) ||
                const DeepCollectionEquality().equals(other.stages, stages)) &&
            (identical(other.background, background) ||
                const DeepCollectionEquality()
                    .equals(other.background, background)) &&
            (identical(other.nameI18n, nameI18n) ||
                const DeepCollectionEquality()
                    .equals(other.nameI18n, nameI18n)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(subType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(existence) ^
      const DeepCollectionEquality().hash(stages) ^
      const DeepCollectionEquality().hash(background) ^
      const DeepCollectionEquality().hash(nameI18n);

  @JsonKey(ignore: true)
  @override
  _$ZoneModelCopyWith<_ZoneModel> get copyWith =>
      __$ZoneModelCopyWithImpl<_ZoneModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ZoneModelToJson(this);
  }
}

abstract class _ZoneModel implements ZoneModel {
  const factory _ZoneModel(
          {@JsonKey(name: 'zoneId') String id,
          @JsonKey(name: 'zoneIndex') int? index,
          @JsonKey(name: 'type') String type,
          @JsonKey(name: 'subType') String subType,
          @JsonKey(name: 'zoneName') String name,
          ExistenceModel? existence,
          List<String> stages,
          String background,
          @JsonKey(name: 'zoneName_i18n') Map<String, String> nameI18n}) =
      _$_ZoneModel;

  factory _ZoneModel.fromJson(Map<String, dynamic> json) =
      _$_ZoneModel.fromJson;

  @override
  @JsonKey(name: 'zoneId')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'zoneIndex')
  int? get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'subType')
  String get subType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'zoneName')
  String get name => throw _privateConstructorUsedError;
  @override
  ExistenceModel? get existence => throw _privateConstructorUsedError;
  @override
  List<String> get stages => throw _privateConstructorUsedError;
  @override
  String get background => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'zoneName_i18n')
  Map<String, String> get nameI18n => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ZoneModelCopyWith<_ZoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}
