import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import 'character/character_page.dart';
import 'home/home_page.dart';
import 'splash/splash_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<void>(
      initial: true,
      name: 'splash',
      page: SplashPage,
    ),
    CustomRoute<void>(
      name: 'home',
      page: HomePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AdaptiveRoute<void>(
      name: 'character',
      page: CharacterPage,
    ),
  ],
)
class $Router {}
