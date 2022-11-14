import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/components/components.dart';
import 'package:hotel_app/components/reusable_card.dart';
import 'package:hotel_app/components/sizedbox.dart';
import 'package:hotel_app/models/hotels.dart';

import '../constants/constis.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, this.hotel}) : super(key: key);
  final Hotels? hotel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // All Images and Icons
            Stack(
              children: [
                Positioned(
                  child: Container(
                    //margin: EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: hotel!.image ?? "",
                        child: Image.asset(
                          hotel!.image ?? "",
                          height: 360,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  //right: 0,
                  top: 30,
                  right: 15,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      Images.kBookMark,
                      height: 20,
                    ),
                  ),
                ),
                Positioned(
                  //right: 0,
                  top: 30,
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.only(left: 5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBoxes(h: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hotel!.title ?? "Lama Hayo", style: KModernStyle),
                Text(
                  "\$ ${hotel!.money ?? ""}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff9A99B4),
                  ),
                ),
              ],
            ),
            SizedBoxes(h: 10),
            // Location and Rate
            Row(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        Text(hotel!.root ?? "", style: KHintStyle),
                      ],
                    ),
                  ],
                ),
                SizedBoxes(w: 110),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                      size: 30,
                    ),
                    SizedBoxes(w: 5),
                    Text(
                      hotel!.rate ?? "",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBoxes(h: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialCard(
                  image: Images.kBed,
                  title: '3 bed',
                ),
                MaterialCard(
                  title: '2 bath',
                  image: Images.kShower,
                ),
                MaterialCard(
                  title: 'Parking',
                  image: Images.kParking,
                ),
                MaterialCard(
                  image: Images.kWife,
                  title: 'Wifi',
                ),
              ],
            ),
            SizedBoxes(h: 10),
            Text("Description", style: KTitleStyle),
            SizedBoxes(h: 5),
            Expanded(
              child: ExpandableText(
                "Simple house with modern architecture and coll interior located"
                "at prime location . Take a virtual tour and disccover it from inside"
                "simply dummy text of the printing and typesetting industry. ",
                animation: true,
                animationCurve: Curves.easeIn,
                expandText: 'show more',
                collapseText: 'show less',
                maxLines: 3,
                linkColor: Colors.blue,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            // User profile
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.kContainerBedBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("images/angela.png"),
                    radius: 30,
                  ),
                  SizedBoxes(w: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Angela Yu",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Owner",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  ReusableContainerIcon(
                    h: 45,
                    w: 45,
                    color: AppColors.kContainerIconsBackground,
                    child: Icon(
                      Icons.phone_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBoxes(w: 10),
                  ReusableContainerIcon(
                    h: 45,
                    w: 45,
                    color: AppColors.kContainerIconsBackground,
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
