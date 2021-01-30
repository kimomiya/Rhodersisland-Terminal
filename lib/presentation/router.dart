import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import 'item/items_page.dart';
import 'splash/splash_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<void>(
      initial: true,
      name: 'splash',
      page: SplashPage,
    ),
    CustomRoute<void>(
      name: 'items',
      path: '/items',
      page: ItemsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $Router {}
