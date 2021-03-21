// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:rhodes_island_terminal/presentation/item/items_page.dart'
    as _i3;
import 'package:rhodes_island_terminal/presentation/item/stats/item_stats_page.dart'
    as _i4;
import 'package:rhodes_island_terminal/presentation/splash/splash_page.dart'
    as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i2.SplashPage());
    },
    ItemsRoute.name: (entry) {
      return _i1.CustomPage(
          entry: entry,
          child: _i3.ItemsPage(),
          transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ItemStatsRoute.name: (entry) {
      var args = entry.routeData.argsAs<ItemStatsRouteArgs>();
      return _i1.AdaptivePage(entry: entry, child: _i4.ItemStatsPage(args.id));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(ItemsRoute.name, path: '/items-page'),
        _i1.RouteConfig(ItemStatsRoute.name, path: '/item-stats-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class ItemsRoute extends _i1.PageRouteInfo {
  const ItemsRoute() : super(name, path: '/items-page');

  static const String name = 'ItemsRoute';
}

class ItemStatsRoute extends _i1.PageRouteInfo<ItemStatsRouteArgs> {
  ItemStatsRoute({required String id})
      : super(name, path: '/item-stats-page', args: ItemStatsRouteArgs(id: id));

  static const String name = 'ItemStatsRoute';
}

class ItemStatsRouteArgs {
  const ItemStatsRouteArgs({required this.id});

  final String id;
}
