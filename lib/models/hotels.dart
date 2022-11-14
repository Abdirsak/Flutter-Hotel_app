import 'package:flutter/material.dart';

import '../constants/constis.dart';

class Hotels {
  final String image;
  final String title;
  final String root;
  final String money;
  final String rate;
  Hotels({
    required this.image,
    required this.title,
    required this.root,
    required this.money,
    required this.rate,
  });
}

List hotels = [
  Hotels(
    image: Images.kHotelOne,
    title: 'Modern Family house',
    root: "168 old town root",
    money: "\$886/month",
    rate: "4.9",
  ),
  Hotels(
    image: Images.kHotelTwo,
    title: 'Luxuray Hotel',
    root: "Los Angles USA",
    money: "\$980/month",
    rate: "3.5",
  ),
  Hotels(
    image: Images.kHotelThree,
    title: 'Five Start Hotel',
    root: "168 ",
    money: "\$2800/month",
    rate: "8.5",
  ),
  Hotels(
    image: Images.kHotelFour,
    title: 'Quick Stop Hotel',
    root: "Italy rote 12",
    money: "\$800/month",
    rate: "4.4",
  ),
  Hotels(
    image: Images.kHotelFive,
    title: 'Windsor Suites Hotel',
    root: "Dabka/somalia",
    money: "\$900/month",
    rate: "7.0",
  ),
  Hotels(
    image: Images.kHotelSix,
    title: 'Hard Rock Hotel',
    root: "ilaborka/somalia",
    money: "\$500/month",
    rate: "3.4",
  ),
];
