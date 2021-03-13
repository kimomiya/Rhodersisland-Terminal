import 'package:auto_route/auto_route.dart';

import 'item/items_page.dart';
import 'splash/splash_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<void>(
      initial: true,
      page: SplashPage,
    ),
    CustomRoute<void>(
      page: ItemsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
