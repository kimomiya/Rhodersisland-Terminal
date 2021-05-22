import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../core/constants.dart';
import 'converter/index.dart';
import 'daos/index.dart';

part 'app_database.g.dart';
part 'tables/items_table.dart';
part 'tables/stages_table.dart';

const _tables = [Items, Stages];

const _daos = [ItemsDao, StagesDao];

LazyDatabase _open() => LazyDatabase(() async {
      final appDir = await getApplicationDocumentsDirectory();
      final file = File(join(appDir.path, databaseName));
      return VmDatabase(file);
    });

@UseMoor(tables: _tables, daos: _daos)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_open());

  @override
  int get schemaVersion => databaseVersion;
}
