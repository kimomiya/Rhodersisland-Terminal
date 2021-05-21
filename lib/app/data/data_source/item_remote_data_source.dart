import 'package:dio/dio.dart';

import '../../core/alias/type_alias.dart';
import '../core/constants.dart';
import '../models/item_model.dart';

const _baseUrl = '$penguinStatsBaseURL/items';

class ItemRemoteDataSource {
  ItemRemoteDataSource({required this.client});

  final Dio client;

  Future<List<ItemModel>> fetchAll() async {
    final response = await client.get<List>(_baseUrl);
    final items = <ItemModel>[];
    for (final data in response.data ?? <dynamic>[]) {
      items.add(ItemModel.fromJson(data as Json));
    }
    return items;
  }
}
