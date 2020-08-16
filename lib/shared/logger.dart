import 'package:logger/logger.dart';

final logger = Logger(
  filter: DevelopmentFilter(),
  printer: PrettyPrinter(
    methodCount: 1,
    printTime: true,
  ),
  output: ConsoleOutput(),
);
