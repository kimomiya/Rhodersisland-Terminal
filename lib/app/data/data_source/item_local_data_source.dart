import '../database/daos/index.dart';
import '../model/item_model.dart';

class ItemLocalDataSource {
  ItemLocalDataSource({required this.client});

  final ItemsDao client;

  Future<List<ItemModel>> getAll() => client.getAll();

  Future<void> replaceAll(List<ItemModel> models) => client.replaceAll(models);
}
