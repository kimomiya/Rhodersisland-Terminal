import 'package:get/get.dart';

import '../controller/splash_controller.dart';
import '../data/data_source/item_local_data_source.dart';
import '../data/data_source/item_remote_data_source.dart';
import '../data/repository/item_repository.dart';
import 'base/base_bindings.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        itemRepository: ItemRepository(
          localDataSource: ItemLocalDataSource(client: appDatabase.itemsDao),
          remoteDataSource: ItemRemoteDataSource(client: httpClient),
        ),
      ),
    );
  }
}
