import 'dart:ui';
import 'package:event/Helper/textfild.dart';
import 'package:event/Models/nearbymodel.dart';
import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:event/list_data/eventdata.dart';
import 'package:event/list_data/nearbyevents.dart';
import 'package:event/routes/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Models/eventmodel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List eventData;
  List nearByData;
  void eventListData() {
    eventData = eventsMap['data']
        .map<EventModel>((obj) => EventModel.fromJson(obj))
        .toList();
  }

  void nearByListData() {
    nearByData = nearByEvent['data']
        .map<NearByModel>((obj) => NearByModel.fromJson(obj))
        .toList();
  }

  @override
  void initState() {
    eventListData();
    nearByListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/layer-bg.jpg'),
                      fit: BoxFit.cover),
                  color: mainColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQueryData.fromWindow(window).padding.top + 15,
                    bottom: 40,
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: primaryColor,
                            size: 25,
                          ),
                          Text(
                            'Apurav',
                            style: textStyleHeader(primaryColor),
                          ),
                          Icon(
                            Icons.notifications_none_outlined,
                            color: primaryColor,
                            size: 25,
                          ),
                        ],
                      ),
                      Text(
                        "Join With Upcoming Amazing\nEvent",
                        style: textStyleHeader2(),
                      ),
                      textField("Search", "magnifying-glass.png"),
                    ],
                  ),
                ),
              )),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 300,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Most Popular',
                            style: category(categoryColor),
                          ),
                          Text(
                            'View All',
                            style: viewAll(categoryViewAllColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: List.generate(
                            eventData.length,
                            (index) => GestureDetector(
                                  onTap: () {
                                    Get.toNamed(Routes.EventDetailScreen,
                                        arguments: eventData[index]);
                                  },
                                  child: categoryContainer(
                                      eventData[index].image.toString(),
                                      eventData[index].name.toString(),
                                      eventData[index].type.toString(),
                                      eventData[index].company.toString(),
                                      eventData[index].date.toString(),
                                      eventData[index].time.toString()),
                                )),
                      ),
                      Text(
                        'Near By',
                        style: category(categoryColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: List.generate(
                            nearByData.length,
                            (index) => nearByContainer(
                                nearByData[index].image.toString(),
                                nearByData[index].name.toString(),
                                nearByData[index].date.toString(),
                                nearByData[index].distance.toString())),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryContainer(String url, String name, String type, String company,
      String date, String time) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 120,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
                image: DecorationImage(
                    image: AssetImage(
                      url,
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
              padding: const EdgeInsets.only(left: 15, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: mainColor),
                  ),
                  Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: categoryColor),
                  ),
                  Text(
                    "By $company",
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffC1C1C1)),
                  ),
                  Text(
                    "$date/$time",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: categoryColor),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget nearByContainer(
      String url, String name, String date, String distance) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: mainColor,
                    image: DecorationImage(
                        image: AssetImage(url), fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.toString(),
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: mainColor),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: categoryColor),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "$distance km",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: categoryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
