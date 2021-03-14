import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../application/item/item_matrix_provider.dart';
import '../../../../generated/l10n.dart';

final _itemMatrix = Provider.autoDispose(
  (ref) => ref.watch(itemMatrixProvider.state).matrix,
);

class ItemMatrixTable extends StatefulWidget {
  const ItemMatrixTable();

  @override
  _ItemMatrixTableState createState() => _ItemMatrixTableState();
}

class _ItemMatrixTableState extends State<ItemMatrixTable> {
  var _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final matrix = watch(_itemMatrix);
        final i18n = S.of(context);
        final columns = <DataColumn>[
          DataColumn(label: Text(i18n.stage)),
          DataColumn(
            label: Text(i18n.dropRate),
            onSort: (index, ascending) {
              setState(() => _sortAscending = !_sortAscending);
              context.read(itemMatrixProvider).sortByDropRate(_sortAscending);
            },
          ),
          DataColumn(label: Text(i18n.expectedSanity)),
        ];
        final rows = matrix.iter
            .map(
              (m) => DataRow(cells: [
                DataCell(Text(m.stageId)),
                DataCell(Text(m.quantity.toString())),
                DataCell(Text(m.times.toString())),
              ]),
            )
            .toList();

        return FittedBox(
          child: DataTable(
            columns: columns,
            sortAscending: _sortAscending,
            sortColumnIndex: 2,
            rows: rows,
          ),
        );
      },
    );
  }
}
