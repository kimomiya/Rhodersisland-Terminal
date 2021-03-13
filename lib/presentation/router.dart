import 'package:auto_route/auto_route.dart';

import 'item/items_page.dart';
import 'item/stats/item_stats_page.dart';
import 'splash/splash_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<void>(page: SplashPage, initial: true),
    CustomRoute<void>(
      page: ItemsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute<void>(page: ItemStatsPage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
