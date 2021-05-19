import 'package:logger/logger.dart';

final logger = Logger(
  filter: DevelopmentFilter(),
  printer: PrettyPrinter(printTime: true),
  output: ConsoleOutput(),
);
