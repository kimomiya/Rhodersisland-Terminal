import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

import '../generated/l10n.dart';
import 'router.gr.dart';

class RhodesIslandTerminal extends StatelessWidget {
  const RhodesIslandTerminal();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: OKToast(
        child: const _MaterialApp(),
        radius: 4,
        position: const ToastPosition(align: Alignment.bottomCenter),
        dismissOtherOnShow: true,
        backgroundColor: Colors.black.withOpacity(0.75),
        textPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      ),
      designSize: const Size(750, 1334),
    );
  }
}

//* Material App

class _MaterialApp extends StatelessWidget {
  const _MaterialApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => S.of(context).title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator.builder(
        initialRoute: '/',
        router: Router(),
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
