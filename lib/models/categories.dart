import 'package:flutter/material.dart';

import '../constants/constis.dart';

class Categories {
  final String image;
  final String text;
  Categories({required this.image, required this.text});
}

List categories = [
  Categories(
    image: Images.kHome,
    text: 'Home',
  ),
  Categories(
    image: Images.kAHotel,
    text: 'Hotel',
  ),
  Categories(
    image: Images.kApartments,
    text: 'apartments',
  ),
  Categories(
    image: Images.kHome,
    text: 'Home',
  ),
  Categories(
    image: Images.kAHotel,
    text: 'Hotel',
  ),
  Categories(
    image: Images.kApartments,
    text: 'apartments',
  ),
];
