import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/bindings/core/base_dependencies.dart';
import 'app/bindings/splash_binding.dart';
import 'app/core/enum/i18n.dart';
import 'app/router/router.dart';
import 'app/transitions/app_translations.dart';
import 'app/ui/material/splash/splash_page.dart';
import 'app/ui/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  initDependencies();

  runApp(const RhodesIslandTerminal());
}

class RhodesIslandTerminal extends StatelessWidget {
  const RhodesIslandTerminal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        home: SplashPage(),
        initialRoute: Routes.splash,
        onGenerateTitle: (_) => 'appTitle'.tr,
        theme: lightTheme,
        darkTheme: darkTheme,
        locale: window.locale,
        fallbackLocale: I18n.us.locale,
        debugShowCheckedModeBanner: false,
        translationsKeys: appTranslationsKeys,
        defaultTransition: Transition.fade,
        getPages: appPages,
        enableLog: true,
        initialBinding: SplashBinding(),
      ),
      designSize: const Size(750, 1334),
    );
  }
}
