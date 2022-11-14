import 'package:flutter/material.dart';

import '../constants/constis.dart';

class BedRoom extends StatelessWidget {
  BedRoom({
    required this.typeRoom,
    required this.isSelected,
    required this.isTapted,
  });
  final String typeRoom;
  final bool isSelected;
  final VoidCallback isTapted;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: isTapted,
        child: Container(
          width: 60,
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.kContainerIconsBackground
                : AppColors.kContainerMaterialBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              typeRoom,
              style: TextStyle(
                fontSize: 17,
                color: isSelected
                    ? AppColors.kContainerBackground
                    : Colors.black87,
              ),
            ),
          ),
        ));
  }
}
