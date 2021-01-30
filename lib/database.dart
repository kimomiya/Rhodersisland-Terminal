import 'dart:async';

import 'package:sqflite/sqflite.dart';

import 'infrastructure/item/dtos/item_dto.dart';

Future<void> onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON');
}

Future<void> onCreate(Database db, int version) async {
  final batch = db.batch();

  _createItemTableV1(batch);

  await batch.commit(noResult: true);
}

//* Table Creators

void _createItemTableV1(Batch batch) {
  batch.execute(
    '''
      CREATE TABLE ${ItemDto.tableName} (
        itemId TEXT PRIMARY KEY,
        itemType TEXT,
        name TEXT,
        name_i18n TEXT,
        alias TEXT,
        pron TEXT,
        existence TEXT,
        rarity INTEGER,
        addTimePoint INTEGER,
        spriteCoord TEXT,
        groupId TEXT,
        sortId INTEGER
      )
      ''',
  );
}
