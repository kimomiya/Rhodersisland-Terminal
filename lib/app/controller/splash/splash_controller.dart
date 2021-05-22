import 'package:get/get.dart';

import '../../data/repository/item_repository.dart';
import '../../data/repository/stage_repository.dart';
import '../../router/router.dart';

class SplashController extends GetxController {
  SplashController({
    required this.itemRepository,
    required this.stageRepository,
  })  : assert(itemRepository != null),
        assert(stageRepository != null);

  final ItemRepository itemRepository;
  final StageRepository stageRepository;

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
      stageRepository.fetchAndSaveAll(),
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
