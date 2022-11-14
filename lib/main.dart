import 'package:flutter/material.dart';

import 'package:hotel_app/screens/screens.dart';

import 'constants/constis.dart';

void main() {
  runApp(const HotelApp());
}

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Application',
      theme: ThemeData(
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: AppColors.kScaffoldBackground,
        ),
        scaffoldBackgroundColor: AppColors.kScaffoldBackground,
      ),
      home: const RouteNavigation(),
    );
  }
}
