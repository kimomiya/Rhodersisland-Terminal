import 'dart:async';

import 'package:sqflite/sqflite.dart';

import 'core/enums/realm.dart';
import 'data/character/models/character_model.dart';
import 'data/tip/models/tip.dart';

Future<void> onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON');
}

Future<void> onCreate(Database db, int version) async {
  final batch = db.batch();
  _createTablesV1(batch);
  await batch.commit();
}

void _createTablesV1(Batch batch) {
  _createTipTableV1(batch);
  _createCharacterTableV1(batch);
}

void _createTipTableV1(Batch batch) {
  for (final region in Realm.values) {
    batch.execute(
      '''
      CREATE TABLE ${region.value}_${Tip.tableName} (
        tip TEXT,
        weight REAL,
        category TEXT
      )
      ''',
    );
  }
}

void _createCharacterTableV1(Batch batch) {
  for (final region in Realm.values) {
    batch.execute(
      '''
      CREATE TABLE ${region.value}_${CharacterModel.tableName} (
        id TEXT PRIMARY KEY,
        name TEXT,
        description TEXT,
        canUseGeneralPotentialItem INTEGER,
        potentialItemId TEXT,
        team INTEGER,
        displayNumber TEXT,
        appellation TEXT,
        position TEXT,
        tagList TEXT,
        displayLogo TEXT,
        itemUsage TEXT,
        itemDesc TEXT,
        itemObtainApproach TEXT,
        maxPotentialLevel INTEGER,
        rarity INTEGER,
        profession TEXT
      )
      ''',
    );
  }
}
