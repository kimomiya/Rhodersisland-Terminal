import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'injection.dart' as di;
import 'pages/router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.configure();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rhodersisland Terminal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator.builder(
        initialRoute: '/',
        router: Router(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
