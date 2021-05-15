import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/bindings/splash_bindings.dart';
import 'app/router/router.dart';
import 'app/ui/material/splash/splash_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    home: SplashPage(),
    initialRoute: Routes.splash,
    theme: lightTheme,
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    getPages: appPages,
    enableLog: true,
    initialBinding: SplashBinding(),
  ));
}
