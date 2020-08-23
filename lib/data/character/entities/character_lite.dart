import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_lite.freezed.dart';

@freezed
abstract class CharacterLite with _$CharacterLite {
  const factory CharacterLite({
    /// ID
    @required String id,

    /// 名称
    @required String name,

    /// 阵营ID
    @required int team,

    /// 代号
    @required String appellation,

    /// 部署位
    @required String position,

    /// 标签
    @required List<String> tagList,

    /// 获取方式
    @required List<String> itemObtainApproach,

    /// 稀有度
    @required int rarity,

    /// 职业
    @required String profession,
  }) = _CharacterLite;
}
