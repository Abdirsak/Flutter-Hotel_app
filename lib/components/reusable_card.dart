import 'package:flutter/material.dart';
import 'package:hotel_app/components/components.dart';
import 'package:hotel_app/models/hotels.dart';
import 'package:hotel_app/screens/details_screen.dart';

import '../constants/constis.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.hotel}) : super(key: key);

  final Hotels hotel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var route = MaterialPageRoute(
            builder: (_) => DetailScreen(
                  hotel: hotel,
                ));
        Navigator.push(context, route);
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        width: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Stack(
                children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: hotel.image,
                        child: Image.asset(
                          hotel.image,
                          height: 210,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        Images.kBookMark,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.title,
                    style: KModernStyle,
                  ),
                  SizedBoxes(h: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Text(hotel.root, style: KHintStyle),
                    ],
                  ),
                  SizedBoxes(h: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        hotel.money,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.kContainerIconsBackground,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBoxes(w: 5),
                          Text(
                            hotel.rate,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
