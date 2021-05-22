import 'package:moor/moor.dart';

import '../../models/stage_model.dart';
import '../app_database.dart';

part 'stages_dao.g.dart';

@UseDao(tables: [Stages])
class StagesDao extends DatabaseAccessor<AppDatabase> with _$StagesDaoMixin {
  StagesDao(AppDatabase db) : super(db);

  Future<List<StageModel>> getAll() async {
    final results = await select(stages).get();
    return results.map((stage) => StageModel.fromJson(stage.toJson())).toList();
  }

  Future<StageModel> getById(String id) async {
    final operator = select(stages)..where((t) => t.id.equals(id));
    final result = await operator.getSingle();
    return StageModel.fromJson(result.toJson());
  }

  Future<void> replaceAll(List<StageModel> models) async {
    if (models.isEmpty) {
      return;
    }

    final rows = models.map((model) {
      final existence = model.existence.map((k, v) => MapEntry(k, v.toJson()));
      return StagesCompanion.insert(
        type: model.type,
        id: model.id,
        zoneId: model.zoneId,
        code: model.code,
        apCost: Value(model.apCost),
        dropInfos: model.dropInfos.map((info) => info.toJson()).toList(),
        existence: existence,
        minClearTime: Value(model.minClearTime),
        codeI18n: model.codeI18n,
      );
    }).toList();
    await batch((batch) => batch.insertAllOnConflictUpdate(stages, rows));
  }
}
