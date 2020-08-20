import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
abstract class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    /// ID
    @JsonKey(defaultValue: '') String id,

    /// 名称
    @JsonKey(defaultValue: '') String name,

    /// 特性
    @JsonKey(defaultValue: '') String description,

    /// 是否可使用通用信物提升潜能
    @JsonKey(defaultValue: true) bool canUseGeneralPotentialItem,

    /// 信物ID
    @JsonKey(defaultValue: '') String potentialItemId,

    /// 阵营ID
    @JsonKey(defaultValue: -1) int team,

    /// 展示序号
    @JsonKey(defaultValue: '') String displayNumber,

    /// 召唤物ID
    @JsonKey(defaultValue: '') String tokenKey,

    /// 英文名
    @JsonKey(defaultValue: '') String appellation,

    /// 部署位
    @JsonKey(defaultValue: '') String position,

    /// 标签
    @JsonKey(defaultValue: <String>[]) List<String> tagList,

    /// 阵营标识
    @JsonKey(defaultValue: '') String displayLogo,

    /// 简介
    @JsonKey(defaultValue: '') String itemUsage,

    /// 简介补充
    @JsonKey(defaultValue: '') String itemDesc,

    /// 获取方式
    @JsonKey(defaultValue: '') String itemObtainApproach,

    /// 最大潜能数
    @JsonKey(defaultValue: -1) int maxPotentialLevel,

    /// 稀有度
    @JsonKey(defaultValue: -1) int rarity,

    /// 职业
    @JsonKey(defaultValue: '') String profession,

    /// 属性
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> phases,

    /// 技能组
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> skills,

    /// 天赋
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> talents,

    /// 潜能提升效果
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> potentialRanks,

    /// 信赖提升效果
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> favorKeyFrames,

    /// 技能提升消耗
    // @JsonKey(defaultValue: <dynamic>[]) List<dynamic> allSkillLvlup,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return _$CharacterModelFromJson(json);
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    final canUseGeneralPotentialItem = map['canUseGeneralPotentialItem'] as int;
    map['canUseGeneralPotentialItem'] = canUseGeneralPotentialItem == 1;

    final tagList = map['tagList'] as String;
    map['tagList'] = tagList.split(',');

    return CharacterModel.fromJson(map);
  }

  static const String tableName = 'Character';
}
