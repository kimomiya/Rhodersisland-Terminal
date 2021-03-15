// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required UniqueId id,
      int? addTimePoint,
      required KtMap<String, List<String>> alias,
      required KtMap<Server, Existence> existence,
      required String groupId,
      required ItemType type,
      required String name,
      required KtMap<I18n, String> nameI18n,
      required KtMap<I18n, List<String>> pron,
      int? rarity,
      int? sortId,
      ItemSpriteCoord? spriteCoord}) {
    return _Item(
      id: id,
      addTimePoint: addTimePoint,
      alias: alias,
      existence: existence,
      groupId: groupId,
      type: type,
      name: name,
      nameI18n: nameI18n,
      pron: pron,
      rarity: rarity,
      sortId: sortId,
      spriteCoord: spriteCoord,
    );
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  UniqueId get id => throw _privateConstructorUsedError;
  int? get addTimePoint => throw _privateConstructorUsedError;
  KtMap<String, List<String>> get alias => throw _privateConstructorUsedError;
  KtMap<Server, Existence> get existence => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  ItemType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  KtMap<I18n, String> get nameI18n => throw _privateConstructorUsedError;
  KtMap<I18n, List<String>> get pron => throw _privateConstructorUsedError;
  int? get rarity => throw _privateConstructorUsedError;
  int? get sortId => throw _privateConstructorUsedError;
  ItemSpriteCoord? get spriteCoord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      int? addTimePoint,
      KtMap<String, List<String>> alias,
      KtMap<Server, Existence> existence,
      String groupId,
      ItemType type,
      String name,
      KtMap<I18n, String> nameI18n,
      KtMap<I18n, List<String>> pron,
      int? rarity,
      int? sortId,
      ItemSpriteCoord? spriteCoord});

  $ItemSpriteCoordCopyWith<$Res>? get spriteCoord;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? addTimePoint = freezed,
    Object? alias = freezed,
    Object? existence = freezed,
    Object? groupId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameI18n = freezed,
    Object? pron = freezed,
    Object? rarity = freezed,
    Object? sortId = freezed,
    Object? spriteCoord = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      addTimePoint: addTimePoint == freezed
          ? _value.addTimePoint
          : addTimePoint // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as KtMap<String, List<String>>,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as KtMap<Server, Existence>,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as KtMap<I18n, String>,
      pron: pron == freezed
          ? _value.pron
          : pron // ignore: cast_nullable_to_non_nullable
              as KtMap<I18n, List<String>>,
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
              as ItemSpriteCoord?,
    ));
  }

  @override
  $ItemSpriteCoordCopyWith<$Res>? get spriteCoord {
    if (_value.spriteCoord == null) {
      return null;
    }

    return $ItemSpriteCoordCopyWith<$Res>(_value.spriteCoord!, (value) {
      return _then(_value.copyWith(spriteCoord: value));
    });
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      int? addTimePoint,
      KtMap<String, List<String>> alias,
      KtMap<Server, Existence> existence,
      String groupId,
      ItemType type,
      String name,
      KtMap<I18n, String> nameI18n,
      KtMap<I18n, List<String>> pron,
      int? rarity,
      int? sortId,
      ItemSpriteCoord? spriteCoord});

  @override
  $ItemSpriteCoordCopyWith<$Res>? get spriteCoord;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? addTimePoint = freezed,
    Object? alias = freezed,
    Object? existence = freezed,
    Object? groupId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameI18n = freezed,
    Object? pron = freezed,
    Object? rarity = freezed,
    Object? sortId = freezed,
    Object? spriteCoord = freezed,
  }) {
    return _then(_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      addTimePoint: addTimePoint == freezed
          ? _value.addTimePoint
          : addTimePoint // ignore: cast_nullable_to_non_nullable
              as int?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as KtMap<String, List<String>>,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as KtMap<Server, Existence>,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as KtMap<I18n, String>,
      pron: pron == freezed
          ? _value.pron
          : pron // ignore: cast_nullable_to_non_nullable
              as KtMap<I18n, List<String>>,
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
              as ItemSpriteCoord?,
    ));
  }
}

/// @nodoc
class _$_Item implements _Item {
  const _$_Item(
      {required this.id,
      this.addTimePoint,
      required this.alias,
      required this.existence,
      required this.groupId,
      required this.type,
      required this.name,
      required this.nameI18n,
      required this.pron,
      this.rarity,
      this.sortId,
      this.spriteCoord});

  @override
  final UniqueId id;
  @override
  final int? addTimePoint;
  @override
  final KtMap<String, List<String>> alias;
  @override
  final KtMap<Server, Existence> existence;
  @override
  final String groupId;
  @override
  final ItemType type;
  @override
  final String name;
  @override
  final KtMap<I18n, String> nameI18n;
  @override
  final KtMap<I18n, List<String>> pron;
  @override
  final int? rarity;
  @override
  final int? sortId;
  @override
  final ItemSpriteCoord? spriteCoord;

  @override
  String toString() {
    return 'Item(id: $id, addTimePoint: $addTimePoint, alias: $alias, existence: $existence, groupId: $groupId, type: $type, name: $name, nameI18n: $nameI18n, pron: $pron, rarity: $rarity, sortId: $sortId, spriteCoord: $spriteCoord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(addTimePoint) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(existence) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameI18n) ^
      const DeepCollectionEquality().hash(pron) ^
      const DeepCollectionEquality().hash(rarity) ^
      const DeepCollectionEquality().hash(sortId) ^
      const DeepCollectionEquality().hash(spriteCoord);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(
      {required UniqueId id,
      int? addTimePoint,
      required KtMap<String, List<String>> alias,
      required KtMap<Server, Existence> existence,
      required String groupId,
      required ItemType type,
      required String name,
      required KtMap<I18n, String> nameI18n,
      required KtMap<I18n, List<String>> pron,
      int? rarity,
      int? sortId,
      ItemSpriteCoord? spriteCoord}) = _$_Item;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  int? get addTimePoint => throw _privateConstructorUsedError;
  @override
  KtMap<String, List<String>> get alias => throw _privateConstructorUsedError;
  @override
  KtMap<Server, Existence> get existence => throw _privateConstructorUsedError;
  @override
  String get groupId => throw _privateConstructorUsedError;
  @override
  ItemType get type => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  KtMap<I18n, String> get nameI18n => throw _privateConstructorUsedError;
  @override
  KtMap<I18n, List<String>> get pron => throw _privateConstructorUsedError;
  @override
  int? get rarity => throw _privateConstructorUsedError;
  @override
  int? get sortId => throw _privateConstructorUsedError;
  @override
  ItemSpriteCoord? get spriteCoord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
