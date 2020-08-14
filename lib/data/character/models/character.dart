import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
abstract class Character with _$Character {
  const factory Character({
    @JsonKey(defaultValue: '') String id,
    @JsonKey(defaultValue: '') String name,
    @JsonKey(defaultValue: '') String description,
    @JsonKey(defaultValue: true) bool canUseGeneralPotentialItem,
    @JsonKey(defaultValue: '') String potentialItemId,
    @JsonKey(defaultValue: -1) int team,
    @JsonKey(defaultValue: '') String displayNumber,
    @JsonKey(defaultValue: '') String appellation,
    @JsonKey(defaultValue: '') String position,
    @JsonKey(defaultValue: <String>[]) List<String> tagList,
    @JsonKey(defaultValue: '') String displayLogo,
    @JsonKey(defaultValue: '') String itemUsage,
    @JsonKey(defaultValue: '') String itemDesc,
    @JsonKey(defaultValue: '') String itemObtainApproach,
    @JsonKey(defaultValue: -1) int maxPotentialLevel,
    @JsonKey(defaultValue: -1) int rarity,
    @JsonKey(defaultValue: '') String profession,
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> trait,
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> phases,
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> skills,
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> talents,
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> potentialRanks,
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> favorKeyFrames,
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> allSkillLvlup,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) {
    return _$CharacterFromJson(json);
  }
}
