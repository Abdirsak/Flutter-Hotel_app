import 'package:flutter/material.dart';
import 'package:hotel_app/components/sizedbox.dart';
import 'package:hotel_app/constants/all_style.dart';
import 'package:hotel_app/constants/color.dart';
import 'package:hotel_app/fuctionallity/fuctionallity.dart';

import '../components/components.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  // Range Slider
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  AppBrain brain = AppBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.only(left: 5),
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  SizedBoxes(w: 100),
                  Text("Filter", style: KTitleStyle),
                ],
              ),

              Text(
                "Property Type",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // SizedBoxes(h: 20),
              Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: brain.types.length,
                    itemBuilder: (_, int index) {
                      return TypesOfRooms(
                        typeRoom: brain.types[index][0],
                        isSelected: brain.types[index][1],
                        isTapted: () {
                          setState(() {
                            brain.ChangeType(index);
                          });
                        },
                      );
                    }),
              ),
              // SizedBoxes(h: 20),
              // Price Container
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.kContainerBackground,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Price Range",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      RangeSlider(
                        activeColor: AppColors.kContainerIconsBackground,
                        inactiveColor: Colors.blueGrey[200],
                        values: _currentRangeValues,
                        max: 500,
                        divisions: 5,
                        min: 0,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                      Row(
                        children: [
                          Text(
                            "\$ ${_currentRangeValues.start.toInt()}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBoxes(w: 150),
                          Text(
                            "\$ ${_currentRangeValues.end.toInt()}k",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // SizedBoxes(h: 20),
              // Bed Rooms
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.kContainerBackground,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bedrooms",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 50,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: brain.bedrooms.length,
                            itemBuilder: (_, int index) {
                              return BedRooms(
                                typeRoom: brain.bedrooms[index][0],
                                isSelected: brain.bedrooms[index][1],
                                isTapted: () {
                                  setState(() {
                                    brain.bedRooms(index);
                                  });
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              // Again Bedroom Only
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.kContainerBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bedrooms",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 50,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: brain.bedroom.length,
                            itemBuilder: (_, int index) {
                              return BedRoom(
                                typeRoom: brain.bedroom[index][0],
                                isSelected: brain.bedroom[index][1],
                                isTapted: () {
                                  setState(() {
                                    brain.bedRoom(index);
                                  });
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              // Button
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: MaterialButton(
                  padding: EdgeInsets.all(15),
                  color: AppColors.kContainerIconsBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
