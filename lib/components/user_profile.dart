import 'package:flutter/material.dart';

import '../constants/constis.dart';
import 'components.dart';

class CardProfile extends StatelessWidget {
  CardProfile({required this.title, required this.icon});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.kContainerBackground,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.grey,
            ),
            SizedBoxes(w: 15),
            Text(title, style: KProfile),
          ],
        ));
  }
}
