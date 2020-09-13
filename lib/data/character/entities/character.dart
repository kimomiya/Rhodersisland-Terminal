import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';

@freezed
abstract class Character with _$Character {
  const factory Character({
    /// ID
    @required String id,

    /// 名称
    @required String name,

    /// 特性
    @required String description,

    /// 是否可使用通用信物提升潜能
    @required bool canUseGeneralPotentialItem,

    /// 信物ID
    @required String potentialItemId,

    /// 阵营ID
    @required int team,

    /// 展示序号
    @required String displayNumber,

    /// 召唤物ID
    @required String tokenKey,

    /// 代号
    @required String appellation,

    /// 部署位
    @required String position,

    /// 标签
    @required List<String> tagList,

    /// 阵营标识
    @JsonKey(defaultValue: '') String displayLogo,

    /// 简介
    @JsonKey(defaultValue: '') String itemUsage,

    /// 简介补充
    @JsonKey(defaultValue: '') String itemDesc,

    /// 获取方式
    @required String itemObtainApproach,

    /// 最大潜能数
    @JsonKey(defaultValue: -1) int maxPotentialLevel,

    /// 稀有度
    @required int rarity,

    /// 职业
    @required String profession,

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
  }) = _Character;
}
