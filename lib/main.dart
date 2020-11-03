import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import 'generated/l10n.dart';
import 'injection.dart' as di;
import 'pages/router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.configure();

  runApp(const ProviderScope(child: RhodesislandTerminal()));
}

class RhodesislandTerminal extends StatelessWidget {
  const RhodesislandTerminal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
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
      ),
      radius: 4,
      position: const ToastPosition(align: Alignment.bottomCenter),
      dismissOtherOnShow: true,
      backgroundColor: Colors.black.withOpacity(0.75),
      textPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    );
  }
}
