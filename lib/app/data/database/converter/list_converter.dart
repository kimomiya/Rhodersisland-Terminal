import 'dart:convert';

import 'package:moor/moor.dart';

class ListConverter extends TypeConverter<List, String> {
  @override
  List? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return json.decode(fromDb) as List;
  }

  @override
  String? mapToSql(List? value) {
    if (value == null) {
      return null;
    }
    return json.encode(value);
  }
}
