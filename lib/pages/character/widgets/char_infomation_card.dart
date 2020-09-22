import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

class CharInformationCard extends StatelessWidget {
  const CharInformationCard({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child
        .padding(all: 20.w.toDouble())
        .card()
        .padding(top: 20.h.toDouble());
  }
}
