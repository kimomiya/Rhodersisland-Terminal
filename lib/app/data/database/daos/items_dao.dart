import 'package:moor/moor.dart';

import '../../model/item_model.dart';
import '../app_database.dart';

part 'items_dao.g.dart';

@UseDao(tables: [Items])
class ItemsDao extends DatabaseAccessor<AppDatabase> with _$ItemsDaoMixin {
  ItemsDao(AppDatabase db) : super(db);

  Future<List<ItemModel>> getAll() async {
    final operator = select(items)
      ..orderBy([(t) => OrderingTerm(expression: t.sortId)]);
    final result = await operator.get();
    return result.map((item) => ItemModel.fromJson(item.toJson())).toList();
  }

  Future<void> replaceAll(List<ItemModel> models) async {
    if (models.isEmpty) {
      return;
    }

    final rows = models.map((model) {
      final existence = model.existence.map((k, v) => MapEntry(k, v.toJson()));
      return ItemsCompanion.insert(
        addTimePoint: Value(model.addTimePoint),
        alias: model.alias,
        existence: existence,
        groupId: model.groupId,
        id: model.id,
        type: model.type,
        name: model.name,
        nameI18n: model.nameI18n,
        pron: model.pron,
        rarity: Value(model.rarity),
        sortId: Value(model.sortId),
        spriteCoord: model.spriteCoord,
      );
    }).toList();
    await batch((batch) => batch.insertAllOnConflictUpdate(items, rows));
  }
}
