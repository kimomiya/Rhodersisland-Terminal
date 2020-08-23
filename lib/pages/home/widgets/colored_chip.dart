import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

class ColoredChip extends StatelessWidget {
  const ColoredChip({
    Key key,
    @required this.label,
    this.backgroundColor,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final Color backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    if (onPressed == null) {
      return Chip(
        label: Text(label).textColor(Colors.white).fontSize(28.sp.toDouble()),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        backgroundColor: backgroundColor ?? Colors.black,
      );
    }

    return ActionChip(
      label: Text(label).textColor(Colors.white).fontSize(28.sp.toDouble()),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      backgroundColor: backgroundColor ?? Colors.black,
    );
  }
}
