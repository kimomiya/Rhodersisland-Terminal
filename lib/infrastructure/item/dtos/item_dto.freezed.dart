// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _ItemDto.fromJson(json);
}

/// @nodoc
class _$ItemDtoTearOff {
  const _$ItemDtoTearOff();

  _ItemDto call(
      int? addTimePoint,
      Map<String, List<String>>? alias,
      Map<String, ExistenceDto>? existence,
      String? groupId,
      String? itemId,
      String? itemType,
      String? name,
      @JsonKey(name: 'name_i18n') Map<String, String>? nameI18n,
      Map<String, List<String>>? pron,
      int? rarity,
      int? sortId,
      List<int>? spriteCoord) {
    return _ItemDto(
      addTimePoint,
      alias,
      existence,
      groupId,
      itemId,
      itemType,
      name,
      nameI18n,
      pron,
      rarity,
      sortId,
      spriteCoord,
    );
  }

  ItemDto fromJson(Map<String, Object> json) {
    return ItemDto.fromJson(json);
  }
}

/// @nodoc
const $ItemDto = _$ItemDtoTearOff();

/// @nodoc
mixin _$ItemDto {
  int? get addTimePoint => throw _privateConstructorUsedError;
  Map<String, List<String>>? get alias => throw _privateConstructorUsedError;
  Map<String, ExistenceDto>? get existence =>
      throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get itemType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_i18n')
  Map<String, String>? get nameI18n => throw _privateConstructorUsedError;
  Map<String, List<String>>? get pron => throw _privateConstructorUsedError;
  int? get rarity => throw _privateConstructorUsedError;
  int? get sortId => throw _privateConstructorUsedError;
  List<int>? get spriteCoord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res>;
  $Res call(
      {int? addTimePoint,
      Map<String, List<String>>? alias,
      Map<String, ExistenceDto>? existence,
      String? groupId,
      String? itemId,
      String? itemType,
      String? name,
      @JsonKey(name: 'name_i18n') Map<String, String>? nameI18n,
      Map<String, List<String>>? pron,
      int? rarity,
      int? sortId,
      List<int>? spriteCoord});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res> implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  final ItemDto _value;
  // ignore: unused_field
  final $Res Function(ItemDto) _then;

  @override
  $Res call({
    Object? addTimePoint = freezed,
    Object? alias = freezed,
    Object? existence = freezed,
    Object? groupId = freezed,
    Object? itemId = freezed,
    Object? itemType = freezed,
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
              as Map<String, List<String>>?,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceDto>?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameI18n: nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      pron: pron == freezed
          ? _value.pron
          : pron // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
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
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$ItemDtoCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$ItemDtoCopyWith(_ItemDto value, $Res Function(_ItemDto) then) =
      __$ItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? addTimePoint,
      Map<String, List<String>>? alias,
      Map<String, ExistenceDto>? existence,
      String? groupId,
      String? itemId,
      String? itemType,
      String? name,
      @JsonKey(name: 'name_i18n') Map<String, String>? nameI18n,
      Map<String, List<String>>? pron,
      int? rarity,
      int? sortId,
      List<int>? spriteCoord});
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
    Object? addTimePoint = freezed,
    Object? alias = freezed,
    Object? existence = freezed,
    Object? groupId = freezed,
    Object? itemId = freezed,
    Object? itemType = freezed,
    Object? name = freezed,
    Object? nameI18n = freezed,
    Object? pron = freezed,
    Object? rarity = freezed,
    Object? sortId = freezed,
    Object? spriteCoord = freezed,
  }) {
    return _then(_ItemDto(
      addTimePoint == freezed
          ? _value.addTimePoint
          : addTimePoint // ignore: cast_nullable_to_non_nullable
              as int?,
      alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceDto>?,
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameI18n == freezed
          ? _value.nameI18n
          : nameI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      pron == freezed
          ? _value.pron
          : pron // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int?,
      sortId == freezed
          ? _value.sortId
          : sortId // ignore: cast_nullable_to_non_nullable
              as int?,
      spriteCoord == freezed
          ? _value.spriteCoord
          : spriteCoord // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemDto implements _ItemDto {
  const _$_ItemDto(
      this.addTimePoint,
      this.alias,
      this.existence,
      this.groupId,
      this.itemId,
      this.itemType,
      this.name,
      @JsonKey(name: 'name_i18n') this.nameI18n,
      this.pron,
      this.rarity,
      this.sortId,
      this.spriteCoord);

  factory _$_ItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemDtoFromJson(json);

  @override
  final int? addTimePoint;
  @override
  final Map<String, List<String>>? alias;
  @override
  final Map<String, ExistenceDto>? existence;
  @override
  final String? groupId;
  @override
  final String? itemId;
  @override
  final String? itemType;
  @override
  final String? name;
  @override
  @JsonKey(name: 'name_i18n')
  final Map<String, String>? nameI18n;
  @override
  final Map<String, List<String>>? pron;
  @override
  final int? rarity;
  @override
  final int? sortId;
  @override
  final List<int>? spriteCoord;

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
      int? addTimePoint,
      Map<String, List<String>>? alias,
      Map<String, ExistenceDto>? existence,
      String? groupId,
      String? itemId,
      String? itemType,
      String? name,
      @JsonKey(name: 'name_i18n') Map<String, String>? nameI18n,
      Map<String, List<String>>? pron,
      int? rarity,
      int? sortId,
      List<int>? spriteCoord) = _$_ItemDto;

  factory _ItemDto.fromJson(Map<String, dynamic> json) = _$_ItemDto.fromJson;

  @override
  int? get addTimePoint => throw _privateConstructorUsedError;
  @override
  Map<String, List<String>>? get alias => throw _privateConstructorUsedError;
  @override
  Map<String, ExistenceDto>? get existence =>
      throw _privateConstructorUsedError;
  @override
  String? get groupId => throw _privateConstructorUsedError;
  @override
  String? get itemId => throw _privateConstructorUsedError;
  @override
  String? get itemType => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name_i18n')
  Map<String, String>? get nameI18n => throw _privateConstructorUsedError;
  @override
  Map<String, List<String>>? get pron => throw _privateConstructorUsedError;
  @override
  int? get rarity => throw _privateConstructorUsedError;
  @override
  int? get sortId => throw _privateConstructorUsedError;
  @override
  List<int>? get spriteCoord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDtoCopyWith<_ItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
