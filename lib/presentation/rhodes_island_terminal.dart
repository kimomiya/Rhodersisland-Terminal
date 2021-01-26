import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/l10n.dart';
import 'router.gr.dart';

class RhodesIslandTerminal extends StatelessWidget {
  const RhodesIslandTerminal();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: const _MaterialApp(),
      designSize: const Size(750, 1334),
    );
  }
}

//* Material App

class _MaterialApp extends StatelessWidget {
  const _MaterialApp();

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return MaterialApp(
      builder: (context, child) {
        final navigatorBuilder = ExtendedNavigator.builder(
          observers: [BotToastNavigatorObserver()],
          initialRoute: '/',
          router: Router(),
        );
        return botToastBuilder(context, navigatorBuilder(context, child));
      },
      onGenerateTitle: (context) => S.of(context).appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
