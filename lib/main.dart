import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'injection.dart' as di;
import 'presentation/rhodes_island_terminal.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.configure();

  runApp(const ProviderScope(child: RhodesIslandTerminal()));
}
