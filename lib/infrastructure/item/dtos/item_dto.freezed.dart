// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _ItemDto.fromJson(json);
}

/// @nodoc
class _$ItemDtoTearOff {
  const _$ItemDtoTearOff();

// ignore: unused_element
  _ItemDto call(
      {@JsonKey(nullable: true)
          int addTimePoint,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> alias,
      @JsonKey(
          fromJson: _existenceFromJson, defaultValue: const <
              ItemExistenceDto>[])
          List<ItemExistenceDto> existence,
      @JsonKey(defaultValue: '')
          String groupId,
      @JsonKey(required: true)
          String itemId,
      @JsonKey(defaultValue: '')
          String itemType,
      @JsonKey(defaultValue: '')
          String name,
      @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
          Map<String, String> nameI18n,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> pron,
      @JsonKey(nullable: true)
          int rarity,
      @JsonKey(nullable: true)
          int sortId,
      @JsonKey(defaultValue: const <int>[])
          List<int> spriteCoord}) {
    return _ItemDto(
      addTimePoint: addTimePoint,
      alias: alias,
      existence: existence,
      groupId: groupId,
      itemId: itemId,
      itemType: itemType,
      name: name,
      nameI18n: nameI18n,
      pron: pron,
      rarity: rarity,
      sortId: sortId,
      spriteCoord: spriteCoord,
    );
  }

// ignore: unused_element
  ItemDto fromJson(Map<String, Object> json) {
    return ItemDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemDto = _$ItemDtoTearOff();

/// @nodoc
mixin _$ItemDto {
  @JsonKey(nullable: true)
  int get addTimePoint;
  @JsonKey(defaultValue: const <dynamic>{})
  Map<String, List<String>> get alias;
  @JsonKey(
      fromJson: _existenceFromJson, defaultValue: const <ItemExistenceDto>[])
  List<ItemExistenceDto> get existence;
  @JsonKey(defaultValue: '')
  String get groupId;
  @JsonKey(required: true)
  String get itemId;
  @JsonKey(defaultValue: '')
  String get itemType;
  @JsonKey(defaultValue: '')
  String get name;
  @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
  Map<String, String> get nameI18n;
  @JsonKey(defaultValue: const <dynamic>{})
  Map<String, List<String>> get pron;
  @JsonKey(nullable: true)
  int get rarity;
  @JsonKey(nullable: true)
  int get sortId;
  @JsonKey(defaultValue: const <int>[])
  List<int> get spriteCoord;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(nullable: true)
          int addTimePoint,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> alias,
      @JsonKey(
          fromJson: _existenceFromJson, defaultValue: const <
              ItemExistenceDto>[])
          List<ItemExistenceDto> existence,
      @JsonKey(defaultValue: '')
          String groupId,
      @JsonKey(required: true)
          String itemId,
      @JsonKey(defaultValue: '')
          String itemType,
      @JsonKey(defaultValue: '')
          String name,
      @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
          Map<String, String> nameI18n,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> pron,
      @JsonKey(nullable: true)
          int rarity,
      @JsonKey(nullable: true)
          int sortId,
      @JsonKey(defaultValue: const <int>[])
          List<int> spriteCoord});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res> implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  final ItemDto _value;
  // ignore: unused_field
  final $Res Function(ItemDto) _then;

  @override
  $Res call({
    Object addTimePoint = freezed,
    Object alias = freezed,
    Object existence = freezed,
    Object groupId = freezed,
    Object itemId = freezed,
    Object itemType = freezed,
    Object name = freezed,
    Object nameI18n = freezed,
    Object pron = freezed,
    Object rarity = freezed,
    Object sortId = freezed,
    Object spriteCoord = freezed,
  }) {
    return _then(_value.copyWith(
      addTimePoint:
          addTimePoint == freezed ? _value.addTimePoint : addTimePoint as int,
      alias:
          alias == freezed ? _value.alias : alias as Map<String, List<String>>,
      existence: existence == freezed
          ? _value.existence
          : existence as List<ItemExistenceDto>,
      groupId: groupId == freezed ? _value.groupId : groupId as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
      itemType: itemType == freezed ? _value.itemType : itemType as String,
      name: name == freezed ? _value.name : name as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n as Map<String, String>,
      pron: pron == freezed ? _value.pron : pron as Map<String, List<String>>,
      rarity: rarity == freezed ? _value.rarity : rarity as int,
      sortId: sortId == freezed ? _value.sortId : sortId as int,
      spriteCoord: spriteCoord == freezed
          ? _value.spriteCoord
          : spriteCoord as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$ItemDtoCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$ItemDtoCopyWith(_ItemDto value, $Res Function(_ItemDto) then) =
      __$ItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(nullable: true)
          int addTimePoint,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> alias,
      @JsonKey(
          fromJson: _existenceFromJson, defaultValue: const <
              ItemExistenceDto>[])
          List<ItemExistenceDto> existence,
      @JsonKey(defaultValue: '')
          String groupId,
      @JsonKey(required: true)
          String itemId,
      @JsonKey(defaultValue: '')
          String itemType,
      @JsonKey(defaultValue: '')
          String name,
      @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
          Map<String, String> nameI18n,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> pron,
      @JsonKey(nullable: true)
          int rarity,
      @JsonKey(nullable: true)
          int sortId,
      @JsonKey(defaultValue: const <int>[])
          List<int> spriteCoord});
}

/// @nodoc
class __$ItemDtoCopyWithImpl<$Res> extends _$ItemDtoCopyWithImpl<$Res>
    implements _$ItemDtoCopyWith<$Res> {
  __$ItemDtoCopyWithImpl(_ItemDto _value, $Res Function(_ItemDto) _then)
      : super(_value, (v) => _then(v as _ItemDto));

  @override
  _ItemDto get _value => super._value as _ItemDto;

  @override
  $Res call({
    Object addTimePoint = freezed,
    Object alias = freezed,
    Object existence = freezed,
    Object groupId = freezed,
    Object itemId = freezed,
    Object itemType = freezed,
    Object name = freezed,
    Object nameI18n = freezed,
    Object pron = freezed,
    Object rarity = freezed,
    Object sortId = freezed,
    Object spriteCoord = freezed,
  }) {
    return _then(_ItemDto(
      addTimePoint:
          addTimePoint == freezed ? _value.addTimePoint : addTimePoint as int,
      alias:
          alias == freezed ? _value.alias : alias as Map<String, List<String>>,
      existence: existence == freezed
          ? _value.existence
          : existence as List<ItemExistenceDto>,
      groupId: groupId == freezed ? _value.groupId : groupId as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
      itemType: itemType == freezed ? _value.itemType : itemType as String,
      name: name == freezed ? _value.name : name as String,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n as Map<String, String>,
      pron: pron == freezed ? _value.pron : pron as Map<String, List<String>>,
      rarity: rarity == freezed ? _value.rarity : rarity as int,
      sortId: sortId == freezed ? _value.sortId : sortId as int,
      spriteCoord: spriteCoord == freezed
          ? _value.spriteCoord
          : spriteCoord as List<int>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemDto implements _ItemDto {
  const _$_ItemDto(
      {@JsonKey(nullable: true)
          this.addTimePoint,
      @JsonKey(defaultValue: const <dynamic>{})
          this.alias,
      @JsonKey(
          fromJson: _existenceFromJson, defaultValue: const <
              ItemExistenceDto>[])
          this.existence,
      @JsonKey(defaultValue: '')
          this.groupId,
      @JsonKey(required: true)
          this.itemId,
      @JsonKey(defaultValue: '')
          this.itemType,
      @JsonKey(defaultValue: '')
          this.name,
      @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
          this.nameI18n,
      @JsonKey(defaultValue: const <dynamic>{})
          this.pron,
      @JsonKey(nullable: true)
          this.rarity,
      @JsonKey(nullable: true)
          this.sortId,
      @JsonKey(defaultValue: const <int>[])
          this.spriteCoord});

  factory _$_ItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemDtoFromJson(json);

  @override
  @JsonKey(nullable: true)
  final int addTimePoint;
  @override
  @JsonKey(defaultValue: const <dynamic>{})
  final Map<String, List<String>> alias;
  @override
  @JsonKey(
      fromJson: _existenceFromJson, defaultValue: const <ItemExistenceDto>[])
  final List<ItemExistenceDto> existence;
  @override
  @JsonKey(defaultValue: '')
  final String groupId;
  @override
  @JsonKey(required: true)
  final String itemId;
  @override
  @JsonKey(defaultValue: '')
  final String itemType;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
  final Map<String, String> nameI18n;
  @override
  @JsonKey(defaultValue: const <dynamic>{})
  final Map<String, List<String>> pron;
  @override
  @JsonKey(nullable: true)
  final int rarity;
  @override
  @JsonKey(nullable: true)
  final int sortId;
  @override
  @JsonKey(defaultValue: const <int>[])
  final List<int> spriteCoord;

  @override
  String toString() {
    return 'ItemDto(addTimePoint: $addTimePoint, alias: $alias, existence: $existence, groupId: $groupId, itemId: $itemId, itemType: $itemType, name: $name, nameI18n: $nameI18n, pron: $pron, rarity: $rarity, sortId: $sortId, spriteCoord: $spriteCoord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemDto &&
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
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.itemType, itemType) ||
                const DeepCollectionEquality()
                    .equals(other.itemType, itemType)) &&
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
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(itemType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameI18n) ^
      const DeepCollectionEquality().hash(pron) ^
      const DeepCollectionEquality().hash(rarity) ^
      const DeepCollectionEquality().hash(sortId) ^
      const DeepCollectionEquality().hash(spriteCoord);

  @JsonKey(ignore: true)
  @override
  _$ItemDtoCopyWith<_ItemDto> get copyWith =>
      __$ItemDtoCopyWithImpl<_ItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemDtoToJson(this);
  }
}

abstract class _ItemDto implements ItemDto {
  const factory _ItemDto(
      {@JsonKey(nullable: true)
          int addTimePoint,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> alias,
      @JsonKey(
          fromJson: _existenceFromJson, defaultValue: const <
              ItemExistenceDto>[])
          List<ItemExistenceDto> existence,
      @JsonKey(defaultValue: '')
          String groupId,
      @JsonKey(required: true)
          String itemId,
      @JsonKey(defaultValue: '')
          String itemType,
      @JsonKey(defaultValue: '')
          String name,
      @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
          Map<String, String> nameI18n,
      @JsonKey(defaultValue: const <dynamic>{})
          Map<String, List<String>> pron,
      @JsonKey(nullable: true)
          int rarity,
      @JsonKey(nullable: true)
          int sortId,
      @JsonKey(defaultValue: const <int>[])
          List<int> spriteCoord}) = _$_ItemDto;

  factory _ItemDto.fromJson(Map<String, dynamic> json) = _$_ItemDto.fromJson;

  @override
  @JsonKey(nullable: true)
  int get addTimePoint;
  @override
  @JsonKey(defaultValue: const <dynamic>{})
  Map<String, List<String>> get alias;
  @override
  @JsonKey(
      fromJson: _existenceFromJson, defaultValue: const <ItemExistenceDto>[])
  List<ItemExistenceDto> get existence;
  @override
  @JsonKey(defaultValue: '')
  String get groupId;
  @override
  @JsonKey(required: true)
  String get itemId;
  @override
  @JsonKey(defaultValue: '')
  String get itemType;
  @override
  @JsonKey(defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'name_i18n', defaultValue: const <dynamic>{})
  Map<String, String> get nameI18n;
  @override
  @JsonKey(defaultValue: const <dynamic>{})
  Map<String, List<String>> get pron;
  @override
  @JsonKey(nullable: true)
  int get rarity;
  @override
  @JsonKey(nullable: true)
  int get sortId;
  @override
  @JsonKey(defaultValue: const <int>[])
  List<int> get spriteCoord;
  @override
  @JsonKey(ignore: true)
  _$ItemDtoCopyWith<_ItemDto> get copyWith;
}
