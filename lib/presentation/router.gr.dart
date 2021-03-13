// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import 'item/items_page.dart' as _i3;
import 'item/stats/item_stats_page.dart' as _i4;
import 'splash/splash_page.dart' as _i2;

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
          transitionsBuilder: _i1.TransitionsBuilders.fadeIn);
    },
    ItemStatsRoute.name: (entry) {
      var route = entry.routeData.as<ItemStatsRoute>();
      return _i1.AdaptivePage(entry: entry, child: _i4.ItemStatsPage(route.id));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<SplashRoute>(SplashRoute.name,
            path: '/', routeBuilder: (match) => SplashRoute.fromMatch(match)),
        _i1.RouteConfig<ItemsRoute>(ItemsRoute.name,
            path: '/items-page',
            routeBuilder: (match) => ItemsRoute.fromMatch(match)),
        _i1.RouteConfig<ItemStatsRoute>(ItemStatsRoute.name,
            path: '/item-stats-page',
            routeBuilder: (match) => ItemStatsRoute.fromMatch(match))
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  SplashRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SplashRoute';
}

class ItemsRoute extends _i1.PageRouteInfo {
  const ItemsRoute() : super(name, path: '/items-page');

  ItemsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ItemsRoute';
}

class ItemStatsRoute extends _i1.PageRouteInfo {
  ItemStatsRoute({this.id}) : super(name, path: '/item-stats-page');

  ItemStatsRoute.fromMatch(_i1.RouteMatch match)
      : id = null,
        super.fromMatch(match);

  final String? id;

  static const String name = 'ItemStatsRoute';
}
