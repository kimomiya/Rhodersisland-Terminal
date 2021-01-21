import 'dart:async';

import 'package:sqflite/sqflite.dart';

Future<void> onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON');
}

Future<void> onCreate(Database db, int version) async {
  final batch = db.batch();
  _createTablesV1(batch);
  await batch.commit(noResult: true);
}

void _createTablesV1(Batch batch) {}
