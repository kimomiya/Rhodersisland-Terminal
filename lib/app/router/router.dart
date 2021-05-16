import 'package:get/get.dart';

import '../bindings/items_binding.dart';
import '../ui/material/item/items_page.dart';
import '../ui/material/splash/splash_page.dart';

abstract class Routes {
  static const splash = '/';
  static const items = '/items';
}

final appPages = [
  GetPage<dynamic>(name: Routes.splash, page: () => SplashPage()),
  GetPage<dynamic>(
    name: Routes.items,
    page: () => ItemsPage(),
    binding: ItemsBinding(),
    transition: Transition.fade,
  ),
];
