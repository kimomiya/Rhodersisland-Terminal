import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/item/item_matrix_provider.dart';
import '../../../application/item/item_matrix_state.dart';
import '../../../application/item/item_provider.dart';
import '../../../core/constants/assets_path.dart';
import '../../../core/enums/item_type.dart';
import '../../../domain/item/entities/item.dart';
import '../../../generated/l10n.dart';
import '../../core/widgets/rhodes_app_bar.dart';
import 'widgets/index.dart';

class ItemStatsPage extends StatefulWidget {
  const ItemStatsPage(this.id);

  final String id;

  @override
  _ItemStatsPageState createState() => _ItemStatsPageState();
}

class _ItemStatsPageState extends State<ItemStatsPage> {
  @override
  void initState() {
    super.initState();

    context.read(itemMatrixProvider).loadMatrix(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RhodesAppBar(title: Text(S.of(context).stats)),
      body: ProviderListener(
        onChange: _onStateChanged,
        provider: itemMatrixProvider.state,
        child: _buildBody(),
      ),
    );
  }

  //* Components

  Widget _buildBody() {
    return Column(
      children: [
        Consumer(
          builder: (context, watch, child) {
            final item = watch(itemFilter(widget.id));
            Widget chip;
            if (item?.type == ItemType.furniture) {
              chip = _buildFurnitureChip();
            } else {
              chip = _buildSpriteChip(item!);
            }
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              height: 120.h,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: ClipOval(child: chip),
                  ),
                  Text(item!.name, style: TextStyle(fontSize: 32.sp)),
                ],
              ),
            );
          },
        ),
        const Expanded(child: ItemMatrixTable()),
      ],
    );
  }

  Widget _buildFurnitureChip() {
    return const ColoredBox(
      color: Color(0xFFFF5722),
      child: Icon(FontAwesomeIcons.couch, color: Colors.white),
    );
  }

  Widget _buildSpriteChip(Item item) {
    final coordX = item.spriteCoord?.x;
    final coordY = item.spriteCoord?.y;

    if (coordX == null || coordY == null) {
      return const ColoredBox(
        color: Color(0xFFFF5722),
        child: Icon(FontAwesomeIcons.dove, color: Colors.white),
      );
    }

    final assetPath = spritePath.replaceFirst('{x}_{y}', '${coordX}_$coordY');
    return Image.asset(assetPath, fit: BoxFit.contain);
  }

  //* Event Methods

  void _onStateChanged(BuildContext context, ItemMatrixState state) {
    state.failureOption.fold(() {}, (failure) {
      final message = failure.map(
        remoteServerError: (_) => S.of(context).remoteServerError,
        unexpectedError: (_) => S.of(context).failedToLoadData,
      );
      BotToast.showText(text: message);
    });
  }
}
