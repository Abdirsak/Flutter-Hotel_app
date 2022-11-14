import 'package:flutter/material.dart';

import '../constants/constis.dart';

class ReusableContainerIcon extends StatelessWidget {
  ReusableContainerIcon({
    required this.child,
    this.h,
    this.w,
    required this.color,
  });
  //final String image;
  final Widget child;
  final double? h;
  final double? w;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: h,
      width: h,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
