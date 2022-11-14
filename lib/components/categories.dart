import 'package:flutter/material.dart';
import 'package:hotel_app/models/categories.dart';

import '../constants/constis.dart';
import 'components.dart';

class CategoreisCard extends StatelessWidget {
  const CategoreisCard({
    Key? key,
    required this.cat,
  }) : super(key: key);
  final Categories cat;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      margin: EdgeInsets.only(right: 13),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(cat.image),
          SizedBoxes(w: 10),
          Text(
            cat.text,
            style: KHintStyle,
          ),
        ],
      ),
    );
  }
}
