// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'item/items_page.dart';
import 'splash/splash_page.dart';

class Routes {
  static const String splash = '/';
  static const String items = '/items';
  static const all = <String>{
    splash,
    items,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splash, page: SplashPage),
    RouteDef(Routes.items, page: ItemsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return buildAdaptivePageRoute<void>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    ItemsPage: (data) {
      return PageRouteBuilder<void>(
        pageBuilder: (context, animation, secondaryAnimation) => ItemsPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
  };
}
