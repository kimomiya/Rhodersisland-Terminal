// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
class _$ItemModelTearOff {
  const _$ItemModelTearOff();

  _ItemModel call(
      {int? addTimePoint,
      Map<String, List<String>> alias = const <String, List<String>>{},
      Map<String, ExistenceModel> existence = const <String, ExistenceModel>{},
      String groupId = '',
      @JsonKey(name: 'itemId')
          String id = '',
      @JsonKey(name: 'itemType')
          String type = '',
      String name = '',
      @JsonKey(name: 'name_i18n')
          Map<String, String> nameI18n = const <String, String>{},
      Map<String, List<String>> pron = const <String, List<String>>{},
      int? rarity,
      int? sortId,
      List<int> spriteCoord = const <int>[]}) {
    return _ItemModel(
      addTimePoint: addTimePoint,
      alias: alias,
      existence: existence,
      groupId: groupId,
      id: id,
      type: type,
      name: name,
      nameI18n: nameI18n,
      pron: pron,
      rarity: rarity,
      sortId: sortId,
      spriteCoord: spriteCoord,
    );
  }

  ItemModel fromJson(Map<String, Object> json) {
    return ItemModel.fromJson(json);
  }
}

/// @nodoc
const $ItemModel = _$ItemModelTearOff();

/// @nodoc
mixin _$ItemModel {
  int? get addTimePoint => throw _privateConstructorUsedError;
  Map<String, List<String>> get alias => throw _privateConstructorUsedError;
  Map<String, ExistenceModel> get existence =>
      throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemType')
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_i18n')
  Map<String, String> get nameI18n => throw _privateConstructorUsedError;
  Map<String, List<String>> get pron => throw _privateConstructorUsedError;
  int? get rarity => throw _privateConstructorUsedError;
  int? get sortId => throw _privateConstructorUsedError;
  List<int> get spriteCoord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call(
      {int? addTimePoint,
      Map<String, List<String>> alias,
      Map<String, ExistenceModel> existence,
      String groupId,
      @JsonKey(name: 'itemId') String id,
      @JsonKey(name: 'itemType') String type,
      String name,
      @JsonKey(name: 'name_i18n') Map<String, String> nameI18n,
      Map<String, List<String>> pron,
      int? rarity,
      int? sortId,
      List<int> spriteCoord});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object? addTimePoint = freezed,
    Object? alias = freezed,
    Object? existence = freezed,
    Object? groupId = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameI18n = freezed,
    Object? pron = freezed,
    Object? rarity = freezed,
    Object? sortId = freezed,
    Object? spriteCoord = freezed,
  }) {
    return _then(_value.copyWith(
      addTimePoint: addTimePoint == freezed
          ? _value.addTimePoint
          : addTimePoint // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceModel>,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pron: pron == freezed
          ? _value.pron
          : pron // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int?,
      sortId: sortId == freezed
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int?,
      spriteCoord: spriteCoord == freezed
          ? _value.spriteCoord
          : spriteCoord // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(
          _ItemModel value, $Res Function(_ItemModel) then) =
      __$ItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? addTimePoint,
      Map<String, List<String>> alias,
      Map<String, ExistenceModel> existence,
      String groupId,
      @JsonKey(name: 'itemId') String id,
      @JsonKey(name: 'itemType') String type,
      String name,
      @JsonKey(name: 'name_i18n') Map<String, String> nameI18n,
      Map<String, List<String>> pron,
      int? rarity,
      int? sortId,
      List<int> spriteCoord});
}

/// @nodoc
class __$ItemModelCopyWithImpl<$Res> extends _$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(_ItemModel _value, $Res Function(_ItemModel) _then)
      : super(_value, (v) => _then(v as _ItemModel));

  @override
  _ItemModel get _value => super._value as _ItemModel;

  @override
  $Res call({
    Object? addTimePoint = freezed,
    Object? alias = freezed,
    Object? existence = freezed,
    Object? groupId = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameI18n = freezed,
    Object? pron = freezed,
    Object? rarity = freezed,
    Object? sortId = freezed,
    Object? spriteCoord = freezed,
  }) {
    return _then(_ItemModel(
      addTimePoint: addTimePoint == freezed
          ? _value.addTimePoint
          : addTimePoint // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceModel>,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pron: pron == freezed
          ? _value.pron
          : pron // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int?,
      sortId: sortId == freezed
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int?,
      spriteCoord: spriteCoord == freezed
          ? _value.spriteCoord
          : spriteCoord // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  const _$_ItemModel(
      {this.addTimePoint,
      this.alias = const <String, List<String>>{},
      this.existence = const <String, ExistenceModel>{},
      this.groupId = '',
      @JsonKey(name: 'itemId') this.id = '',
      @JsonKey(name: 'itemType') this.type = '',
      this.name = '',
      @JsonKey(name: 'name_i18n') this.nameI18n = const <String, String>{},
      this.pron = const <String, List<String>>{},
      this.rarity,
      this.sortId,
      this.spriteCoord = const <int>[]});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemModelFromJson(json);

  @override
  final int? addTimePoint;
  @JsonKey(defaultValue: const <String, List<String>>{})
  @override
  final Map<String, List<String>> alias;
  @JsonKey(defaultValue: const <String, ExistenceModel>{})
  @override
  final Map<String, ExistenceModel> existence;
  @JsonKey(defaultValue: '')
  @override
  final String groupId;
  @override
  @JsonKey(name: 'itemId')
  final String id;
  @override
  @JsonKey(name: 'itemType')
  final String type;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  @JsonKey(name: 'name_i18n')
  final Map<String, String> nameI18n;
  @JsonKey(defaultValue: const <String, List<String>>{})
  @override
  final Map<String, List<String>> pron;
  @override
  final int? rarity;
  @override
  final int? sortId;
  @JsonKey(defaultValue: const <int>[])
  @override
  final List<int> spriteCoord;

  @override
  String toString() {
    return 'ItemModel(addTimePoint: $addTimePoint, alias: $alias, existence: $existence, groupId: $groupId, id: $id, type: $type, name: $name, nameI18n: $nameI18n, pron: $pron, rarity: $rarity, sortId: $sortId, spriteCoord: $spriteCoord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemModel &&
            (identical(other.addTimePoint, addTimePoint) ||
                const DeepCollectionEquality()
                    .equals(other.addTimePoint, addTimePoint)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.existence, existence) ||
                const DeepCollectionEquality()
                    .equals(other.existence, existence)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nameI18n, nameI18n) ||
                const DeepCollectionEquality()
                    .equals(other.nameI18n, nameI18n)) &&
            (identical(other.pron, pron) ||
                const DeepCollectionEquality().equals(other.pron, pron)) &&
            (identical(other.rarity, rarity) ||
                const DeepCollectionEquality().equals(other.rarity, rarity)) &&
            (identical(other.sortId, sortId) ||
                const DeepCollectionEquality().equals(other.sortId, sortId)) &&
            (identical(other.spriteCoord, spriteCoord) ||
                const DeepCollectionEquality()
                    .equals(other.spriteCoord, spriteCoord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addTimePoint) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(existence) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameI18n) ^
      const DeepCollectionEquality().hash(pron) ^
      const DeepCollectionEquality().hash(rarity) ^
      const DeepCollectionEquality().hash(sortId) ^
      const DeepCollectionEquality().hash(spriteCoord);

  @JsonKey(ignore: true)
  @override
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemModelToJson(this);
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {int? addTimePoint,
      Map<String, List<String>> alias,
      Map<String, ExistenceModel> existence,
      String groupId,
      @JsonKey(name: 'itemId') String id,
      @JsonKey(name: 'itemType') String type,
      String name,
      @JsonKey(name: 'name_i18n') Map<String, String> nameI18n,
      Map<String, List<String>> pron,
      int? rarity,
      int? sortId,
      List<int> spriteCoord}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  int? get addTimePoint => throw _privateConstructorUsedError;
  @override
  Map<String, List<String>> get alias => throw _privateConstructorUsedError;
  @override
  Map<String, ExistenceModel> get existence =>
      throw _privateConstructorUsedError;
  @override
  String get groupId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'itemId')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'itemType')
  String get type => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name_i18n')
  Map<String, String> get nameI18n => throw _privateConstructorUsedError;
  @override
  Map<String, List<String>> get pron => throw _privateConstructorUsedError;
  @override
  int? get rarity => throw _privateConstructorUsedError;
  @override
  int? get sortId => throw _privateConstructorUsedError;
  @override
  List<int> get spriteCoord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
