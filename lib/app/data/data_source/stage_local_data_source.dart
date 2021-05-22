import '../database/daos/index.dart';
import '../models/stage_model.dart';

class StageLocalDataSource {
  StageLocalDataSource({required this.client});

  final StagesDao client;

  Future<List<StageModel>> getAll() => client.getAll();

  Future<StageModel> getById(String id) => client.getById(id);

  Future<void> replaceAll(List<StageModel> models) => client.replaceAll(models);
}
