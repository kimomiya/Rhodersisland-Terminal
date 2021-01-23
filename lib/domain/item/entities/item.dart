import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../core/entity.dart';
import '../../core/unique_id.dart';
import 'item_existence.dart';

part 'item.freezed.dart';

@freezed
abstract class Item with _$Item implements Entity {
  const factory Item({
    @required UniqueId id,
    int addTimePoint,
    @required KtMap<String, List<String>> alias,
    @required KtList<ItemExistence> existence,
    @required String groupId,
    @required String itemType,
    @required String name,
    @required KtMap<String, String> nameI18n,
    @required KtMap<String, List<String>> pron,
    int rarity,
    int sortId,
    @required KtList<int> spriteCoord,
  }) = _Item;
}
