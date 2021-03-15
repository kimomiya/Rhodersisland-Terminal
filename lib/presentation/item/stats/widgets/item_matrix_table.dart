import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../../../../application/item/item_matrix_provider.dart';
import '../../../../core/enums/i18n.dart';
import '../../../../domain/matrix/entities/matrix.dart';
import '../../../../domain/matrix/value_objects/drop_rate.dart';
import '../../../../domain/matrix/value_objects/expected_sanity.dart';
import '../../../../generated/l10n.dart';

final _itemMatrix = Provider.autoDispose(
  (ref) => ref.watch(itemMatrixProvider.state).matrix,
);

final _itemMatrixCount = Provider.autoDispose(
  (ref) => ref.watch(itemMatrixProvider.state).matrix.size,
);

class ItemMatrixTable extends StatefulWidget {
  const ItemMatrixTable();

  @override
  _ItemMatrixTableState createState() => _ItemMatrixTableState();
}

class _ItemMatrixTableState extends State<ItemMatrixTable> {
  var _sortIndex = 2;
  var _sortAscending = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () =>
          context.read(itemMatrixProvider).sortByExpectedSanity(_sortAscending),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final itemCount = watch(_itemMatrixCount);
        return SizedBox(
          height: _rowHeight * (itemCount + 1) + (0.25 * (itemCount - 1)),
          child: HorizontalDataTable(
            leftHandSideColumnWidth: _leftSideWidth,
            rightHandSideColumnWidth:
                _firstRightSideWidth + _secondRightSideWidth,
            isFixedHeader: true,
            headerWidgets: _buildHeaders(),
            leftSideItemBuilder: _buildLeftSideItem,
            rightSideItemBuilder: _buildRightSideItem,
            itemCount: itemCount,
            rowSeparatorWidget: const Divider(
              color: Colors.grey,
              height: 0.25,
              thickness: 0.25,
            ),
          ),
        );
      },
    );
  }

  //* Computed Variables
  double get _leftSideWidth => 260.w;

  double get _firstRightSideWidth => 220.w;

  double get _secondRightSideWidth => 260.w;

  double get _rowHeight => 80.h;

  //* Components

  List<Widget> _buildHeaders() {
    Widget buildHeader(String label) {
      return Text(label, style: const TextStyle(fontWeight: FontWeight.bold));
    }

    Widget buildSortIcon(int sortIndex) {
      if (sortIndex != _sortIndex) {
        return Container();
      }
      final icon = _sortAscending ? Icons.arrow_drop_down : Icons.arrow_drop_up;
      return Icon(icon);
    }

    Widget buildSortableHeader(
      double width,
      String label,
      int sortIndex,
      void Function(bool ascending) sort,
    ) {
      return Container(
        alignment: Alignment.centerLeft,
        width: width,
        height: _rowHeight,
        child: InkWell(
          child: Row(children: [buildHeader(label), buildSortIcon(sortIndex)]),
          onTap: () {
            setState(() {
              if (sortIndex != _sortIndex) {
                _sortAscending = true;
              } else {
                _sortAscending = !_sortAscending;
              }
              _sortIndex = sortIndex;
            });
            sort(_sortAscending);
          },
        ),
      );
    }

    final i18n = S.of(context);
    return [
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        width: _leftSideWidth,
        height: _rowHeight,
        child: buildHeader(i18n.stage),
      ),
      buildSortableHeader(
        _firstRightSideWidth,
        i18n.dropRate,
        1,
        context.read(itemMatrixProvider).sortByDropRate,
      ),
      buildSortableHeader(
        _secondRightSideWidth,
        i18n.expectedSanity,
        2,
        context.read(itemMatrixProvider).sortByExpectedSanity,
      ),
    ];
  }

  Widget _buildLeftSideItem(BuildContext context, int index) {
    return Consumer(
      builder: (context, watch, child) {
        final matrix = watch(_itemMatrix)[index];
        return Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: _leftSideWidth,
          height: _rowHeight,
          child: InkWell(
            child: Text(matrix.stageCodeI18n[I18n.cn] ?? 'N/A'),
            onTap: () {},
          ),
        );
      },
    );
  }

  Widget _buildRightSideItem(BuildContext context, int index) {
    return Consumer(
      builder: (context, watch, child) {
        final matrix = watch(_itemMatrix)[index];
        final items = [
          Container(
            alignment: Alignment.centerLeft,
            width: _firstRightSideWidth,
            height: _rowHeight,
            child: Text(matrix.dropRate.toFixedString()),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: _secondRightSideWidth,
            height: _rowHeight,
            child: Text(matrix.expectedSanity.toFixedString()),
          ),
        ];
        return Row(children: [...items]);
      },
    );
  }
}
