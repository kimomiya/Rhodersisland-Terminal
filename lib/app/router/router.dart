import 'package:get/get.dart';

import '../ui/material/splash/splash_page.dart';

abstract class Routes {
  static const splash = '/';
  static const DETAILS = '/details';
}

final appPages = [
  GetPage<dynamic>(name: Routes.splash, page: () => SplashPage()),
];
