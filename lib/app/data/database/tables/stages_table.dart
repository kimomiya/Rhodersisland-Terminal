part of '../app_database.dart';

class Stages extends Table {
  @JsonKey('stageType')
  TextColumn get type => text()();
  @JsonKey('stageId')
  TextColumn get id => text()();
  TextColumn get zoneId => text()();
  TextColumn get code => text()();
  IntColumn get apCost => integer().nullable()();
  TextColumn get dropInfos => text().map(ListConverter())();
  TextColumn get existence => text().map(JsonConverter())();
  IntColumn get minClearTime => integer().nullable()();
  TextColumn get codeI18n => text().map(JsonConverter())();

  @override
  Set<Column>? get primaryKey => {id};
}
