// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Item extends DataClass implements Insertable<Item> {
  final int? addTimePoint;
  final Map<String, dynamic> alias;
  final Map<String, dynamic> existence;
  final String groupId;
  final String id;
  final String type;
  final String name;
  final Map<String, dynamic> nameI18n;
  final Map<String, dynamic> pron;
  final int? rarity;
  final int? sortId;
  final List<dynamic> spriteCoord;
  Item(
      {this.addTimePoint,
      required this.alias,
      required this.existence,
      required this.groupId,
      required this.id,
      required this.type,
      required this.name,
      required this.nameI18n,
      required this.pron,
      this.rarity,
      this.sortId,
      required this.spriteCoord});
  factory Item.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Item(
      addTimePoint: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}add_time_point']),
      alias: $ItemsTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}alias']))!,
      existence: $ItemsTable.$converter1.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}existence']))!,
      groupId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}group_id'])!,
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      nameI18n: $ItemsTable.$converter2.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name_i18n']))!,
      pron: $ItemsTable.$converter3.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pron']))!,
      rarity: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rarity']),
      sortId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sort_id']),
      spriteCoord: $ItemsTable.$converter4.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sprite_coord']))!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || addTimePoint != null) {
      map['add_time_point'] = Variable<int?>(addTimePoint);
    }
    {
      final converter = $ItemsTable.$converter0;
      map['alias'] = Variable<String>(converter.mapToSql(alias)!);
    }
    {
      final converter = $ItemsTable.$converter1;
      map['existence'] = Variable<String>(converter.mapToSql(existence)!);
    }
    map['group_id'] = Variable<String>(groupId);
    map['id'] = Variable<String>(id);
    map['type'] = Variable<String>(type);
    map['name'] = Variable<String>(name);
    {
      final converter = $ItemsTable.$converter2;
      map['name_i18n'] = Variable<String>(converter.mapToSql(nameI18n)!);
    }
    {
      final converter = $ItemsTable.$converter3;
      map['pron'] = Variable<String>(converter.mapToSql(pron)!);
    }
    if (!nullToAbsent || rarity != null) {
      map['rarity'] = Variable<int?>(rarity);
    }
    if (!nullToAbsent || sortId != null) {
      map['sort_id'] = Variable<int?>(sortId);
    }
    {
      final converter = $ItemsTable.$converter4;
      map['sprite_coord'] = Variable<String>(converter.mapToSql(spriteCoord)!);
    }
    return map;
  }

  ItemsCompanion toCompanion(bool nullToAbsent) {
    return ItemsCompanion(
      addTimePoint: addTimePoint == null && nullToAbsent
          ? const Value.absent()
          : Value(addTimePoint),
      alias: Value(alias),
      existence: Value(existence),
      groupId: Value(groupId),
      id: Value(id),
      type: Value(type),
      name: Value(name),
      nameI18n: Value(nameI18n),
      pron: Value(pron),
      rarity:
          rarity == null && nullToAbsent ? const Value.absent() : Value(rarity),
      sortId:
          sortId == null && nullToAbsent ? const Value.absent() : Value(sortId),
      spriteCoord: Value(spriteCoord),
    );
  }

  factory Item.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Item(
      addTimePoint: serializer.fromJson<int?>(json['addTimePoint']),
      alias: serializer.fromJson<Map<String, dynamic>>(json['alias']),
      existence: serializer.fromJson<Map<String, dynamic>>(json['existence']),
      groupId: serializer.fromJson<String>(json['groupId']),
      id: serializer.fromJson<String>(json['itemId']),
      type: serializer.fromJson<String>(json['itemType']),
      name: serializer.fromJson<String>(json['name']),
      nameI18n: serializer.fromJson<Map<String, dynamic>>(json['name_i18n']),
      pron: serializer.fromJson<Map<String, dynamic>>(json['pron']),
      rarity: serializer.fromJson<int?>(json['rarity']),
      sortId: serializer.fromJson<int?>(json['sortId']),
      spriteCoord: serializer.fromJson<List<dynamic>>(json['spriteCoord']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'addTimePoint': serializer.toJson<int?>(addTimePoint),
      'alias': serializer.toJson<Map<String, dynamic>>(alias),
      'existence': serializer.toJson<Map<String, dynamic>>(existence),
      'groupId': serializer.toJson<String>(groupId),
      'itemId': serializer.toJson<String>(id),
      'itemType': serializer.toJson<String>(type),
      'name': serializer.toJson<String>(name),
      'name_i18n': serializer.toJson<Map<String, dynamic>>(nameI18n),
      'pron': serializer.toJson<Map<String, dynamic>>(pron),
      'rarity': serializer.toJson<int?>(rarity),
      'sortId': serializer.toJson<int?>(sortId),
      'spriteCoord': serializer.toJson<List<dynamic>>(spriteCoord),
    };
  }

  Item copyWith(
          {int? addTimePoint,
          Map<String, dynamic>? alias,
          Map<String, dynamic>? existence,
          String? groupId,
          String? id,
          String? type,
          String? name,
          Map<String, dynamic>? nameI18n,
          Map<String, dynamic>? pron,
          int? rarity,
          int? sortId,
          List<dynamic>? spriteCoord}) =>
      Item(
        addTimePoint: addTimePoint ?? this.addTimePoint,
        alias: alias ?? this.alias,
        existence: existence ?? this.existence,
        groupId: groupId ?? this.groupId,
        id: id ?? this.id,
        type: type ?? this.type,
        name: name ?? this.name,
        nameI18n: nameI18n ?? this.nameI18n,
        pron: pron ?? this.pron,
        rarity: rarity ?? this.rarity,
        sortId: sortId ?? this.sortId,
        spriteCoord: spriteCoord ?? this.spriteCoord,
      );
  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('addTimePoint: $addTimePoint, ')
          ..write('alias: $alias, ')
          ..write('existence: $existence, ')
          ..write('groupId: $groupId, ')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('nameI18n: $nameI18n, ')
          ..write('pron: $pron, ')
          ..write('rarity: $rarity, ')
          ..write('sortId: $sortId, ')
          ..write('spriteCoord: $spriteCoord')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      addTimePoint.hashCode,
      $mrjc(
          alias.hashCode,
          $mrjc(
              existence.hashCode,
              $mrjc(
                  groupId.hashCode,
                  $mrjc(
                      id.hashCode,
                      $mrjc(
                          type.hashCode,
                          $mrjc(
                              name.hashCode,
                              $mrjc(
                                  nameI18n.hashCode,
                                  $mrjc(
                                      pron.hashCode,
                                      $mrjc(
                                          rarity.hashCode,
                                          $mrjc(sortId.hashCode,
                                              spriteCoord.hashCode))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          other.addTimePoint == this.addTimePoint &&
          other.alias == this.alias &&
          other.existence == this.existence &&
          other.groupId == this.groupId &&
          other.id == this.id &&
          other.type == this.type &&
          other.name == this.name &&
          other.nameI18n == this.nameI18n &&
          other.pron == this.pron &&
          other.rarity == this.rarity &&
          other.sortId == this.sortId &&
          other.spriteCoord == this.spriteCoord);
}

class ItemsCompanion extends UpdateCompanion<Item> {
  final Value<int?> addTimePoint;
  final Value<Map<String, dynamic>> alias;
  final Value<Map<String, dynamic>> existence;
  final Value<String> groupId;
  final Value<String> id;
  final Value<String> type;
  final Value<String> name;
  final Value<Map<String, dynamic>> nameI18n;
  final Value<Map<String, dynamic>> pron;
  final Value<int?> rarity;
  final Value<int?> sortId;
  final Value<List<dynamic>> spriteCoord;
  const ItemsCompanion({
    this.addTimePoint = const Value.absent(),
    this.alias = const Value.absent(),
    this.existence = const Value.absent(),
    this.groupId = const Value.absent(),
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.name = const Value.absent(),
    this.nameI18n = const Value.absent(),
    this.pron = const Value.absent(),
    this.rarity = const Value.absent(),
    this.sortId = const Value.absent(),
    this.spriteCoord = const Value.absent(),
  });
  ItemsCompanion.insert({
    this.addTimePoint = const Value.absent(),
    required Map<String, dynamic> alias,
    required Map<String, dynamic> existence,
    required String groupId,
    required String id,
    required String type,
    required String name,
    required Map<String, dynamic> nameI18n,
    required Map<String, dynamic> pron,
    this.rarity = const Value.absent(),
    this.sortId = const Value.absent(),
    required List<dynamic> spriteCoord,
  })   : alias = Value(alias),
        existence = Value(existence),
        groupId = Value(groupId),
        id = Value(id),
        type = Value(type),
        name = Value(name),
        nameI18n = Value(nameI18n),
        pron = Value(pron),
        spriteCoord = Value(spriteCoord);
  static Insertable<Item> custom({
    Expression<int?>? addTimePoint,
    Expression<Map<String, dynamic>>? alias,
    Expression<Map<String, dynamic>>? existence,
    Expression<String>? groupId,
    Expression<String>? id,
    Expression<String>? type,
    Expression<String>? name,
    Expression<Map<String, dynamic>>? nameI18n,
    Expression<Map<String, dynamic>>? pron,
    Expression<int?>? rarity,
    Expression<int?>? sortId,
    Expression<List<dynamic>>? spriteCoord,
  }) {
    return RawValuesInsertable({
      if (addTimePoint != null) 'add_time_point': addTimePoint,
      if (alias != null) 'alias': alias,
      if (existence != null) 'existence': existence,
      if (groupId != null) 'group_id': groupId,
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (nameI18n != null) 'name_i18n': nameI18n,
      if (pron != null) 'pron': pron,
      if (rarity != null) 'rarity': rarity,
      if (sortId != null) 'sort_id': sortId,
      if (spriteCoord != null) 'sprite_coord': spriteCoord,
    });
  }

  ItemsCompanion copyWith(
      {Value<int?>? addTimePoint,
      Value<Map<String, dynamic>>? alias,
      Value<Map<String, dynamic>>? existence,
      Value<String>? groupId,
      Value<String>? id,
      Value<String>? type,
      Value<String>? name,
      Value<Map<String, dynamic>>? nameI18n,
      Value<Map<String, dynamic>>? pron,
      Value<int?>? rarity,
      Value<int?>? sortId,
      Value<List<dynamic>>? spriteCoord}) {
    return ItemsCompanion(
      addTimePoint: addTimePoint ?? this.addTimePoint,
      alias: alias ?? this.alias,
      existence: existence ?? this.existence,
      groupId: groupId ?? this.groupId,
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      nameI18n: nameI18n ?? this.nameI18n,
      pron: pron ?? this.pron,
      rarity: rarity ?? this.rarity,
      sortId: sortId ?? this.sortId,
      spriteCoord: spriteCoord ?? this.spriteCoord,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (addTimePoint.present) {
      map['add_time_point'] = Variable<int?>(addTimePoint.value);
    }
    if (alias.present) {
      final converter = $ItemsTable.$converter0;
      map['alias'] = Variable<String>(converter.mapToSql(alias.value)!);
    }
    if (existence.present) {
      final converter = $ItemsTable.$converter1;
      map['existence'] = Variable<String>(converter.mapToSql(existence.value)!);
    }
    if (groupId.present) {
      map['group_id'] = Variable<String>(groupId.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameI18n.present) {
      final converter = $ItemsTable.$converter2;
      map['name_i18n'] = Variable<String>(converter.mapToSql(nameI18n.value)!);
    }
    if (pron.present) {
      final converter = $ItemsTable.$converter3;
      map['pron'] = Variable<String>(converter.mapToSql(pron.value)!);
    }
    if (rarity.present) {
      map['rarity'] = Variable<int?>(rarity.value);
    }
    if (sortId.present) {
      map['sort_id'] = Variable<int?>(sortId.value);
    }
    if (spriteCoord.present) {
      final converter = $ItemsTable.$converter4;
      map['sprite_coord'] =
          Variable<String>(converter.mapToSql(spriteCoord.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsCompanion(')
          ..write('addTimePoint: $addTimePoint, ')
          ..write('alias: $alias, ')
          ..write('existence: $existence, ')
          ..write('groupId: $groupId, ')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('nameI18n: $nameI18n, ')
          ..write('pron: $pron, ')
          ..write('rarity: $rarity, ')
          ..write('sortId: $sortId, ')
          ..write('spriteCoord: $spriteCoord')
          ..write(')'))
        .toString();
  }
}

class $ItemsTable extends Items with TableInfo<$ItemsTable, Item> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ItemsTable(this._db, [this._alias]);
  final VerificationMeta _addTimePointMeta =
      const VerificationMeta('addTimePoint');
  @override
  late final GeneratedIntColumn addTimePoint = _constructAddTimePoint();
  GeneratedIntColumn _constructAddTimePoint() {
    return GeneratedIntColumn(
      'add_time_point',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aliasMeta = const VerificationMeta('alias');
  @override
  late final GeneratedTextColumn alias = _constructAlias();
  GeneratedTextColumn _constructAlias() {
    return GeneratedTextColumn(
      'alias',
      $tableName,
      false,
    );
  }

  final VerificationMeta _existenceMeta = const VerificationMeta('existence');
  @override
  late final GeneratedTextColumn existence = _constructExistence();
  GeneratedTextColumn _constructExistence() {
    return GeneratedTextColumn(
      'existence',
      $tableName,
      false,
    );
  }

  final VerificationMeta _groupIdMeta = const VerificationMeta('groupId');
  @override
  late final GeneratedTextColumn groupId = _constructGroupId();
  GeneratedTextColumn _constructGroupId() {
    return GeneratedTextColumn(
      'group_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedTextColumn id = _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedTextColumn type = _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameI18nMeta = const VerificationMeta('nameI18n');
  @override
  late final GeneratedTextColumn nameI18n = _constructNameI18n();
  GeneratedTextColumn _constructNameI18n() {
    return GeneratedTextColumn(
      'name_i18n',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pronMeta = const VerificationMeta('pron');
  @override
  late final GeneratedTextColumn pron = _constructPron();
  GeneratedTextColumn _constructPron() {
    return GeneratedTextColumn(
      'pron',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rarityMeta = const VerificationMeta('rarity');
  @override
  late final GeneratedIntColumn rarity = _constructRarity();
  GeneratedIntColumn _constructRarity() {
    return GeneratedIntColumn(
      'rarity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sortIdMeta = const VerificationMeta('sortId');
  @override
  late final GeneratedIntColumn sortId = _constructSortId();
  GeneratedIntColumn _constructSortId() {
    return GeneratedIntColumn(
      'sort_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _spriteCoordMeta =
      const VerificationMeta('spriteCoord');
  @override
  late final GeneratedTextColumn spriteCoord = _constructSpriteCoord();
  GeneratedTextColumn _constructSpriteCoord() {
    return GeneratedTextColumn(
      'sprite_coord',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        addTimePoint,
        alias,
        existence,
        groupId,
        id,
        type,
        name,
        nameI18n,
        pron,
        rarity,
        sortId,
        spriteCoord
      ];
  @override
  $ItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'items';
  @override
  final String actualTableName = 'items';
  @override
  VerificationContext validateIntegrity(Insertable<Item> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('add_time_point')) {
      context.handle(
          _addTimePointMeta,
          addTimePoint.isAcceptableOrUnknown(
              data['add_time_point']!, _addTimePointMeta));
    }
    context.handle(_aliasMeta, const VerificationResult.success());
    context.handle(_existenceMeta, const VerificationResult.success());
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_nameI18nMeta, const VerificationResult.success());
    context.handle(_pronMeta, const VerificationResult.success());
    if (data.containsKey('rarity')) {
      context.handle(_rarityMeta,
          rarity.isAcceptableOrUnknown(data['rarity']!, _rarityMeta));
    }
    if (data.containsKey('sort_id')) {
      context.handle(_sortIdMeta,
          sortId.isAcceptableOrUnknown(data['sort_id']!, _sortIdMeta));
    }
    context.handle(_spriteCoordMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Item map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Item.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ItemsTable createAlias(String alias) {
    return $ItemsTable(_db, alias);
  }

  static TypeConverter<Map<String, dynamic>, String> $converter0 =
      JsonConverter();
  static TypeConverter<Map<String, dynamic>, String> $converter1 =
      JsonConverter();
  static TypeConverter<Map<String, dynamic>, String> $converter2 =
      JsonConverter();
  static TypeConverter<Map<String, dynamic>, String> $converter3 =
      JsonConverter();
  static TypeConverter<List<dynamic>, String> $converter4 = ListConverter();
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ItemsTable items = $ItemsTable(this);
  late final ItemsDao itemsDao = ItemsDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [items];
}
