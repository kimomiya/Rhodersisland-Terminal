import 'package:get/get.dart';

import '../controller/items/items_controller.dart';
import '../data/data_source/item_local_data_source.dart';
import '../data/data_source/item_remote_data_source.dart';
import '../data/repository/item_repository.dart';
import 'core/providers.dart';

class ItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemsController>(
      () => ItemsController(
        repository: ItemRepository(
          localDataSource: ItemLocalDataSource(client: appDatabase.itemsDao),
          remoteDataSource: ItemRemoteDataSource(client: httpClient),
        ),
      ),
    );
  }
}
