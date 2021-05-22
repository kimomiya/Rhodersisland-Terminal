import 'package:get/get.dart';

import '../../data/repository/item_repository.dart';
import '../../router/router.dart';

class SplashController extends GetxController {
  SplashController({
    required this.itemRepository,
  }) : assert(itemRepository != null);

  final ItemRepository itemRepository;

  var _opacity = 0.0;
  double get opacity => _opacity;

  @override
  void onInit() {
    _initialize();

    super.onInit();
  }

  void toNext() => Get.offAllNamed<void>(Routes.items);

  void _initialize() {
    Future.wait([
      itemRepository.fetchAndSaveAll(),
    ]);

    Future.delayed(
      Duration.zero,
      () {
        _opacity = 1;
        update();
      },
    );
  }
}
