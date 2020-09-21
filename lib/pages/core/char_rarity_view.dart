import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharRarityView extends StatelessWidget {
  const CharRarityView({
    Key key,
    @required this.rarity,
  }) : super(key: key);

  final int rarity;

  @override
  Widget build(BuildContext context) {
    return Row(children: generateStars());
  }

  List<Widget> generateStars() {
    final stars = <Widget>[];
    for (var index = 0; index <= rarity; index++) {
      final star = Icon(Icons.star, size: 52.w.toDouble());
      stars.add(star);
    }
    return stars;
  }
}
