import '../database/daos/index.dart';
import '../models/item_model.dart';

class ItemLocalDataSource {
  ItemLocalDataSource({required this.client});

  final ItemsDao client;

  Future<List<ItemModel>> getAll() => client.getAll();

  Future<ItemModel> getById(String id) => client.getById(id);

  Future<void> replaceAll(List<ItemModel> models) => client.replaceAll(models);
}
