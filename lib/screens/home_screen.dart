import 'package:flutter/material.dart';
import 'package:hotel_app/models/categories.dart';
import 'package:hotel_app/models/hotels.dart';

import '../components/components.dart';
import '../constants/constis.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Categories cate;
    final Hotels hot;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBoxes(h: 40.0),
              // Custom Title and Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Your\nbest place to stay',
                    style: KTitleStyle,
                  ),
                  ReusableContainerIcon(
                    h: 40,
                    w: 40,
                    color: AppColors.kContainerIconsBackground,
                    child: Image.asset(Images.kMap),
                  )
                ],
              ),
              // SizedBoxes(h: 30),
              // TextField
              Container(
                decoration: BoxDecoration(
                  color: AppColors.kContainerBackground,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: KHintStyle,
                    prefixIcon: Icon(Icons.search_rounded),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.kContainerIconsBackground,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Image.asset(Images.kSettings),
                    ),
                  ),
                ),
              ),
              // SizedBoxes(h: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: KCategoriesStyle,
                  ),
                  Text(
                    "View All",
                    style: KHintStyle,
                  ),
                ],
              ),
              //SizedBoxes(h: 30),
              // Categories
              Container(
                //width: MediaQuery.of(context).size.width,
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (_, int index) {
                    return CategoreisCard(
                      cat: categories[index],
                    );
                  },
                ),
              ),
              // SizedBoxes(h: 30),
              Text('Top Pick\'s', style: KCategoriesStyle),
              // SizedBoxes(h: 30),
              // Card
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotels.length,
                  itemBuilder: (_, int index) {
                    return ReusableCard(
                      hotel: hotels[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
