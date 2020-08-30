// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

class _$CharacterModelTearOff {
  const _$CharacterModelTearOff();

// ignore: unused_element
  _CharacterModel call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(defaultValue: true) bool canUseGeneralPotentialItem,
      @JsonKey(defaultValue: '') String potentialItemId,
      @JsonKey(defaultValue: -1) int team,
      @JsonKey(defaultValue: '') String displayNumber,
      @JsonKey(defaultValue: '') String tokenKey,
      @JsonKey(defaultValue: '') String appellation,
      @JsonKey(defaultValue: '') String position,
      @JsonKey(defaultValue: <String>[]) List<String> tagList,
      @JsonKey(defaultValue: '') String displayLogo,
      @JsonKey(defaultValue: '') String itemUsage,
      @JsonKey(defaultValue: '') String itemDesc,
      @JsonKey(defaultValue: '') String itemObtainApproach,
      @JsonKey(defaultValue: -1) int maxPotentialLevel,
      @JsonKey(defaultValue: -1) int rarity,
      @JsonKey(defaultValue: '') String profession}) {
    return _CharacterModel(
      id: id,
      name: name,
      description: description,
      canUseGeneralPotentialItem: canUseGeneralPotentialItem,
      potentialItemId: potentialItemId,
      team: team,
      displayNumber: displayNumber,
      tokenKey: tokenKey,
      appellation: appellation,
      position: position,
      tagList: tagList,
      displayLogo: displayLogo,
      itemUsage: itemUsage,
      itemDesc: itemDesc,
      itemObtainApproach: itemObtainApproach,
      maxPotentialLevel: maxPotentialLevel,
      rarity: rarity,
      profession: profession,
    );
  }
}

// ignore: unused_element
const $CharacterModel = _$CharacterModelTearOff();

mixin _$CharacterModel {
  @JsonKey(defaultValue: '')
  String get id;
  @JsonKey(defaultValue: '')
  String get name;
  @JsonKey(defaultValue: '')
  String get description;
  @JsonKey(defaultValue: true)
  bool get canUseGeneralPotentialItem;
  @JsonKey(defaultValue: '')
  String get potentialItemId;
  @JsonKey(defaultValue: -1)
  int get team;
  @JsonKey(defaultValue: '')
  String get displayNumber;
  @JsonKey(defaultValue: '')
  String get tokenKey;
  @JsonKey(defaultValue: '')
  String get appellation;
  @JsonKey(defaultValue: '')
  String get position;
  @JsonKey(defaultValue: <String>[])
  List<String> get tagList;
  @JsonKey(defaultValue: '')
  String get displayLogo;
  @JsonKey(defaultValue: '')
  String get itemUsage;
  @JsonKey(defaultValue: '')
  String get itemDesc;
  @JsonKey(defaultValue: '')
  String get itemObtainApproach;
  @JsonKey(defaultValue: -1)
  int get maxPotentialLevel;
  @JsonKey(defaultValue: -1)
  int get rarity;
  @JsonKey(defaultValue: '')
  String get profession;

  Map<String, dynamic> toJson();
  $CharacterModelCopyWith<CharacterModel> get copyWith;
}

abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(defaultValue: true) bool canUseGeneralPotentialItem,
      @JsonKey(defaultValue: '') String potentialItemId,
      @JsonKey(defaultValue: -1) int team,
      @JsonKey(defaultValue: '') String displayNumber,
      @JsonKey(defaultValue: '') String tokenKey,
      @JsonKey(defaultValue: '') String appellation,
      @JsonKey(defaultValue: '') String position,
      @JsonKey(defaultValue: <String>[]) List<String> tagList,
      @JsonKey(defaultValue: '') String displayLogo,
      @JsonKey(defaultValue: '') String itemUsage,
      @JsonKey(defaultValue: '') String itemDesc,
      @JsonKey(defaultValue: '') String itemObtainApproach,
      @JsonKey(defaultValue: -1) int maxPotentialLevel,
      @JsonKey(defaultValue: -1) int rarity,
      @JsonKey(defaultValue: '') String profession});
}

class _$CharacterModelCopyWithImpl<$Res>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  final CharacterModel _value;
  // ignore: unused_field
  final $Res Function(CharacterModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object canUseGeneralPotentialItem = freezed,
    Object potentialItemId = freezed,
    Object team = freezed,
    Object displayNumber = freezed,
    Object tokenKey = freezed,
    Object appellation = freezed,
    Object position = freezed,
    Object tagList = freezed,
    Object displayLogo = freezed,
    Object itemUsage = freezed,
    Object itemDesc = freezed,
    Object itemObtainApproach = freezed,
    Object maxPotentialLevel = freezed,
    Object rarity = freezed,
    Object profession = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      canUseGeneralPotentialItem: canUseGeneralPotentialItem == freezed
          ? _value.canUseGeneralPotentialItem
          : canUseGeneralPotentialItem as bool,
      potentialItemId: potentialItemId == freezed
          ? _value.potentialItemId
          : potentialItemId as String,
      team: team == freezed ? _value.team : team as int,
      displayNumber: displayNumber == freezed
          ? _value.displayNumber
          : displayNumber as String,
      tokenKey: tokenKey == freezed ? _value.tokenKey : tokenKey as String,
      appellation:
          appellation == freezed ? _value.appellation : appellation as String,
      position: position == freezed ? _value.position : position as String,
      tagList: tagList == freezed ? _value.tagList : tagList as List<String>,
      displayLogo:
          displayLogo == freezed ? _value.displayLogo : displayLogo as String,
      itemUsage: itemUsage == freezed ? _value.itemUsage : itemUsage as String,
      itemDesc: itemDesc == freezed ? _value.itemDesc : itemDesc as String,
      itemObtainApproach: itemObtainApproach == freezed
          ? _value.itemObtainApproach
          : itemObtainApproach as String,
      maxPotentialLevel: maxPotentialLevel == freezed
          ? _value.maxPotentialLevel
          : maxPotentialLevel as int,
      rarity: rarity == freezed ? _value.rarity : rarity as int,
      profession:
          profession == freezed ? _value.profession : profession as String,
    ));
  }
}

abstract class _$CharacterModelCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$CharacterModelCopyWith(
          _CharacterModel value, $Res Function(_CharacterModel) then) =
      __$CharacterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(defaultValue: true) bool canUseGeneralPotentialItem,
      @JsonKey(defaultValue: '') String potentialItemId,
      @JsonKey(defaultValue: -1) int team,
      @JsonKey(defaultValue: '') String displayNumber,
      @JsonKey(defaultValue: '') String tokenKey,
      @JsonKey(defaultValue: '') String appellation,
      @JsonKey(defaultValue: '') String position,
      @JsonKey(defaultValue: <String>[]) List<String> tagList,
      @JsonKey(defaultValue: '') String displayLogo,
      @JsonKey(defaultValue: '') String itemUsage,
      @JsonKey(defaultValue: '') String itemDesc,
      @JsonKey(defaultValue: '') String itemObtainApproach,
      @JsonKey(defaultValue: -1) int maxPotentialLevel,
      @JsonKey(defaultValue: -1) int rarity,
      @JsonKey(defaultValue: '') String profession});
}

class __$CharacterModelCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res>
    implements _$CharacterModelCopyWith<$Res> {
  __$CharacterModelCopyWithImpl(
      _CharacterModel _value, $Res Function(_CharacterModel) _then)
      : super(_value, (v) => _then(v as _CharacterModel));

  @override
  _CharacterModel get _value => super._value as _CharacterModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object canUseGeneralPotentialItem = freezed,
    Object potentialItemId = freezed,
    Object team = freezed,
    Object displayNumber = freezed,
    Object tokenKey = freezed,
    Object appellation = freezed,
    Object position = freezed,
    Object tagList = freezed,
    Object displayLogo = freezed,
    Object itemUsage = freezed,
    Object itemDesc = freezed,
    Object itemObtainApproach = freezed,
    Object maxPotentialLevel = freezed,
    Object rarity = freezed,
    Object profession = freezed,
  }) {
    return _then(_CharacterModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      canUseGeneralPotentialItem: canUseGeneralPotentialItem == freezed
          ? _value.canUseGeneralPotentialItem
          : canUseGeneralPotentialItem as bool,
      potentialItemId: potentialItemId == freezed
          ? _value.potentialItemId
          : potentialItemId as String,
      team: team == freezed ? _value.team : team as int,
      displayNumber: displayNumber == freezed
          ? _value.displayNumber
          : displayNumber as String,
      tokenKey: tokenKey == freezed ? _value.tokenKey : tokenKey as String,
      appellation:
          appellation == freezed ? _value.appellation : appellation as String,
      position: position == freezed ? _value.position : position as String,
      tagList: tagList == freezed ? _value.tagList : tagList as List<String>,
      displayLogo:
          displayLogo == freezed ? _value.displayLogo : displayLogo as String,
      itemUsage: itemUsage == freezed ? _value.itemUsage : itemUsage as String,
      itemDesc: itemDesc == freezed ? _value.itemDesc : itemDesc as String,
      itemObtainApproach: itemObtainApproach == freezed
          ? _value.itemObtainApproach
          : itemObtainApproach as String,
      maxPotentialLevel: maxPotentialLevel == freezed
          ? _value.maxPotentialLevel
          : maxPotentialLevel as int,
      rarity: rarity == freezed ? _value.rarity : rarity as int,
      profession:
          profession == freezed ? _value.profession : profession as String,
    ));
  }
}

@JsonSerializable()
class _$_CharacterModel implements _CharacterModel {
  const _$_CharacterModel(
      {@JsonKey(defaultValue: '') this.id,
      @JsonKey(defaultValue: '') this.name,
      @JsonKey(defaultValue: '') this.description,
      @JsonKey(defaultValue: true) this.canUseGeneralPotentialItem,
      @JsonKey(defaultValue: '') this.potentialItemId,
      @JsonKey(defaultValue: -1) this.team,
      @JsonKey(defaultValue: '') this.displayNumber,
      @JsonKey(defaultValue: '') this.tokenKey,
      @JsonKey(defaultValue: '') this.appellation,
      @JsonKey(defaultValue: '') this.position,
      @JsonKey(defaultValue: <String>[]) this.tagList,
      @JsonKey(defaultValue: '') this.displayLogo,
      @JsonKey(defaultValue: '') this.itemUsage,
      @JsonKey(defaultValue: '') this.itemDesc,
      @JsonKey(defaultValue: '') this.itemObtainApproach,
      @JsonKey(defaultValue: -1) this.maxPotentialLevel,
      @JsonKey(defaultValue: -1) this.rarity,
      @JsonKey(defaultValue: '') this.profession});

  factory _$_CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CharacterModelFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(defaultValue: '')
  final String description;
  @override
  @JsonKey(defaultValue: true)
  final bool canUseGeneralPotentialItem;
  @override
  @JsonKey(defaultValue: '')
  final String potentialItemId;
  @override
  @JsonKey(defaultValue: -1)
  final int team;
  @override
  @JsonKey(defaultValue: '')
  final String displayNumber;
  @override
  @JsonKey(defaultValue: '')
  final String tokenKey;
  @override
  @JsonKey(defaultValue: '')
  final String appellation;
  @override
  @JsonKey(defaultValue: '')
  final String position;
  @override
  @JsonKey(defaultValue: <String>[])
  final List<String> tagList;
  @override
  @JsonKey(defaultValue: '')
  final String displayLogo;
  @override
  @JsonKey(defaultValue: '')
  final String itemUsage;
  @override
  @JsonKey(defaultValue: '')
  final String itemDesc;
  @override
  @JsonKey(defaultValue: '')
  final String itemObtainApproach;
  @override
  @JsonKey(defaultValue: -1)
  final int maxPotentialLevel;
  @override
  @JsonKey(defaultValue: -1)
  final int rarity;
  @override
  @JsonKey(defaultValue: '')
  final String profession;

  @override
  String toString() {
    return 'CharacterModel(id: $id, name: $name, description: $description, canUseGeneralPotentialItem: $canUseGeneralPotentialItem, potentialItemId: $potentialItemId, team: $team, displayNumber: $displayNumber, tokenKey: $tokenKey, appellation: $appellation, position: $position, tagList: $tagList, displayLogo: $displayLogo, itemUsage: $itemUsage, itemDesc: $itemDesc, itemObtainApproach: $itemObtainApproach, maxPotentialLevel: $maxPotentialLevel, rarity: $rarity, profession: $profession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharacterModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.canUseGeneralPotentialItem, canUseGeneralPotentialItem) ||
                const DeepCollectionEquality().equals(
                    other.canUseGeneralPotentialItem,
                    canUseGeneralPotentialItem)) &&
            (identical(other.potentialItemId, potentialItemId) ||
                const DeepCollectionEquality()
                    .equals(other.potentialItemId, potentialItemId)) &&
            (identical(other.team, team) ||
                const DeepCollectionEquality().equals(other.team, team)) &&
            (identical(other.displayNumber, displayNumber) ||
                const DeepCollectionEquality()
                    .equals(other.displayNumber, displayNumber)) &&
            (identical(other.tokenKey, tokenKey) ||
                const DeepCollectionEquality()
                    .equals(other.tokenKey, tokenKey)) &&
            (identical(other.appellation, appellation) ||
                const DeepCollectionEquality()
                    .equals(other.appellation, appellation)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.tagList, tagList) ||
                const DeepCollectionEquality()
                    .equals(other.tagList, tagList)) &&
            (identical(other.displayLogo, displayLogo) ||
                const DeepCollectionEquality()
                    .equals(other.displayLogo, displayLogo)) &&
            (identical(other.itemUsage, itemUsage) ||
                const DeepCollectionEquality()
                    .equals(other.itemUsage, itemUsage)) &&
            (identical(other.itemDesc, itemDesc) ||
                const DeepCollectionEquality()
                    .equals(other.itemDesc, itemDesc)) &&
            (identical(other.itemObtainApproach, itemObtainApproach) ||
                const DeepCollectionEquality()
                    .equals(other.itemObtainApproach, itemObtainApproach)) &&
            (identical(other.maxPotentialLevel, maxPotentialLevel) ||
                const DeepCollectionEquality()
                    .equals(other.maxPotentialLevel, maxPotentialLevel)) &&
            (identical(other.rarity, rarity) ||
                const DeepCollectionEquality().equals(other.rarity, rarity)) &&
            (identical(other.profession, profession) ||
                const DeepCollectionEquality()
                    .equals(other.profession, profession)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(canUseGeneralPotentialItem) ^
      const DeepCollectionEquality().hash(potentialItemId) ^
      const DeepCollectionEquality().hash(team) ^
      const DeepCollectionEquality().hash(displayNumber) ^
      const DeepCollectionEquality().hash(tokenKey) ^
      const DeepCollectionEquality().hash(appellation) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(tagList) ^
      const DeepCollectionEquality().hash(displayLogo) ^
      const DeepCollectionEquality().hash(itemUsage) ^
      const DeepCollectionEquality().hash(itemDesc) ^
      const DeepCollectionEquality().hash(itemObtainApproach) ^
      const DeepCollectionEquality().hash(maxPotentialLevel) ^
      const DeepCollectionEquality().hash(rarity) ^
      const DeepCollectionEquality().hash(profession);

  @override
  _$CharacterModelCopyWith<_CharacterModel> get copyWith =>
      __$CharacterModelCopyWithImpl<_CharacterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CharacterModelToJson(this);
  }
}

abstract class _CharacterModel implements CharacterModel {
  const factory _CharacterModel(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(defaultValue: true) bool canUseGeneralPotentialItem,
      @JsonKey(defaultValue: '') String potentialItemId,
      @JsonKey(defaultValue: -1) int team,
      @JsonKey(defaultValue: '') String displayNumber,
      @JsonKey(defaultValue: '') String tokenKey,
      @JsonKey(defaultValue: '') String appellation,
      @JsonKey(defaultValue: '') String position,
      @JsonKey(defaultValue: <String>[]) List<String> tagList,
      @JsonKey(defaultValue: '') String displayLogo,
      @JsonKey(defaultValue: '') String itemUsage,
      @JsonKey(defaultValue: '') String itemDesc,
      @JsonKey(defaultValue: '') String itemObtainApproach,
      @JsonKey(defaultValue: -1) int maxPotentialLevel,
      @JsonKey(defaultValue: -1) int rarity,
      @JsonKey(defaultValue: '') String profession}) = _$_CharacterModel;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterModel.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get name;
  @override
  @JsonKey(defaultValue: '')
  String get description;
  @override
  @JsonKey(defaultValue: true)
  bool get canUseGeneralPotentialItem;
  @override
  @JsonKey(defaultValue: '')
  String get potentialItemId;
  @override
  @JsonKey(defaultValue: -1)
  int get team;
  @override
  @JsonKey(defaultValue: '')
  String get displayNumber;
  @override
  @JsonKey(defaultValue: '')
  String get tokenKey;
  @override
  @JsonKey(defaultValue: '')
  String get appellation;
  @override
  @JsonKey(defaultValue: '')
  String get position;
  @override
  @JsonKey(defaultValue: <String>[])
  List<String> get tagList;
  @override
  @JsonKey(defaultValue: '')
  String get displayLogo;
  @override
  @JsonKey(defaultValue: '')
  String get itemUsage;
  @override
  @JsonKey(defaultValue: '')
  String get itemDesc;
  @override
  @JsonKey(defaultValue: '')
  String get itemObtainApproach;
  @override
  @JsonKey(defaultValue: -1)
  int get maxPotentialLevel;
  @override
  @JsonKey(defaultValue: -1)
  int get rarity;
  @override
  @JsonKey(defaultValue: '')
  String get profession;
  @override
  _$CharacterModelCopyWith<_CharacterModel> get copyWith;
}
