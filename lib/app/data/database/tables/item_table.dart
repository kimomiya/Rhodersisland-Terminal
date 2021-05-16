part of '../app_database.dart';

class Items extends Table {
  IntColumn get addTimePoint => integer().nullable()();
  TextColumn get alias => text().map(JsonConverter())();
  TextColumn get existence => text().map(JsonConverter())();
  TextColumn get groupId => text()();
  TextColumn get itemId => text()();
  TextColumn get itemType => text()();
  TextColumn get name => text()();
  @JsonKey('name_i18n')
  TextColumn get nameI18n => text().map(JsonConverter())();
  TextColumn get pron => text().map(JsonConverter())();
  IntColumn get rarity => integer().nullable()();
  IntColumn get sortId => integer().nullable()();
  TextColumn get spriteCoord => text().map(ListConverter())();

  @override
  Set<Column>? get primaryKey => {itemId};
}
