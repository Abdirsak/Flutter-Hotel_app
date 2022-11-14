import 'package:flutter/material.dart';

import '../constants/constis.dart';
import 'components.dart';

class MaterialCard extends StatelessWidget {
  MaterialCard({required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 75,
      decoration: BoxDecoration(
        color: AppColors.kContainerBedBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBoxes(h: 3),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
