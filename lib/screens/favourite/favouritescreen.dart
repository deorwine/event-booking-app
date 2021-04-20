import 'dart:ui';
import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:event/helper/customappbar.dart';
import 'package:event/list_data/nearbyevents.dart';
import 'package:event/models/nearbymodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List favouriteEventData;

  void favouriteEventListData() {
    favouriteEventData = nearByEvent['data']
        .map<NearByModel>((obj) => NearByModel.fromJson(obj))
        .toList();
  }

  @override
  void initState() {
    favouriteEventListData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQueryData.fromWindow(window).padding.top,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            tabBarScreenAppBar('Favourite'),
            // ignore: sized_box_for_whitespace
            Container(
              height: 100,
              width: 100,
              child: SvgPicture.asset(
                "assets/lover.svg",
                semanticsLabel: 'Acme Logo',
              ),
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Favourite Events',
                      style: category(categoryColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: List.generate(
                          favouriteEventData.length,
                          (index) => nearByContainer(
                                favouriteEventData[index].image.toString(),
                                favouriteEventData[index].name.toString(),
                                favouriteEventData[index].date.toString(),
                              )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget nearByContainer(String url, String name, String date) {
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
              // ignore: sized_box_for_whitespace
              Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset(
                  "assets/lover.svg",
                  semanticsLabel: 'Acme Logo',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
