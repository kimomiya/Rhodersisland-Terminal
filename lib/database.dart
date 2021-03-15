import 'dart:async';

import 'package:sqflite/sqflite.dart';

import 'infrastructure/item/dtos/item_dto.dart';
import 'infrastructure/matrix/dtos/matrix_dto.dart';
import 'infrastructure/stage/dtos/stage_dto.dart';

Future<void> onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON');
}

Future<void> onCreate(Database db, int version) async {
  final batch = db.batch();

  _createStageTable(batch);
  _createItemTable(batch);
  _creatMatrixTable(batch);

  await batch.commit(noResult: true);
}

//* Table Creators

void _createStageTable(Batch batch) {
  batch.execute(
    '''
      CREATE TABLE ${StageDto.tableName} (
        stageId TEXT PRIMARY KEY,
        zoneId TEXT,
        code TEXT,
        stageType TEXT,
        apCost INTEGER,
        dropInfos TEXT,
        existence TEXT,
        minClearTime INTEGER,
        code_i18n INTEGER
      )
      ''',
  );
}

void _createItemTable(Batch batch) {
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

void _creatMatrixTable(Batch batch) {
  batch.execute(
    '''
      CREATE TABLE ${MatrixDto.tableName} (
        stageId TEXT,
        itemId TEXT,
        quantity INTEGER,
        times INTEGER,
        start INTEGER,
        end INTEGER,
        PRIMARY KEY (stageId, itemId)
      )
      ''',
  );
}
