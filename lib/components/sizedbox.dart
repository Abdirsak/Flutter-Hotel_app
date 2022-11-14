import 'package:flutter/cupertino.dart';

class SizedBoxes extends StatelessWidget {
  SizedBoxes({this.h, this.w});
  double? h;
  double? w;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
