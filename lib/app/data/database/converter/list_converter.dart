import 'package:moor/moor.dart';
import 'package:supercharged/supercharged.dart';

class ListConverter extends TypeConverter<List, String> {
  @override
  List? mapToDart(String? fromDb) => fromDb?.parseJSON() as List?;

  @override
  String? mapToSql(List? value) => value?.toJSON();
}
