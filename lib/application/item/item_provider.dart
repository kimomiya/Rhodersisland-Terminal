import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/item/entities/item.dart';
import 'items_provider.dart';

final itemBy = Provider.autoDispose.family(
  (ref, String id) {
    final items = ref.watch(itemsProvider.state).items;
    return items.firstOrNull((item) => item.id.getOrCrash() == id);
  },
);

final currentItem = ScopedProvider<Item>(null);
