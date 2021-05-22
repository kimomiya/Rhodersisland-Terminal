part of '../app_database.dart';

class Items extends Table {
  IntColumn get addTimePoint => integer().nullable()();
  TextColumn get alias => text().map(JsonConverter())();
  TextColumn get existence => text().map(JsonConverter())();
  TextColumn get groupId => text()();
  @JsonKey('itemId')
  TextColumn get id => text()();
  @JsonKey('itemType')
  TextColumn get type => text()();
  TextColumn get name => text()();
  @JsonKey('name_i18n')
  TextColumn get nameI18n => text().map(JsonConverter())();
  TextColumn get pron => text().map(JsonConverter())();
  IntColumn get rarity => integer().nullable()();
  IntColumn get sortId => integer().nullable()();
  TextColumn get spriteCoord => text().map(ListConverter())();

  @override
  Set<Column>? get primaryKey => {id};
}
