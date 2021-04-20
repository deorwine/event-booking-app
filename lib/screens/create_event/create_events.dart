import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:event/Helper/customappbar.dart';
import 'package:event/Helper/detailtexttield.dart';
import 'package:event/Models/participants_users_model.dart';
import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:event/list_data/participantsusers.dart';
import 'package:flutter/material.dart';
class CreateEvents extends StatefulWidget {
  @override
  _CreateEventsState createState() => _CreateEventsState();
}

class _CreateEventsState extends State<CreateEvents> {
  List participantsUsers;
  void participantsUsersData() {
    participantsUsers = participantsUsersList['data']
        .map<ParticipantsUsersModel>(
            (obj) => ParticipantsUsersModel.fromJson(obj))
        .toList();
  }

  @override
  void initState() {
    participantsUsersData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding:  EdgeInsets.only(top: MediaQueryData.fromWindow(window).padding.top ,left: 20,right: 20,),
        child: Column(
          children: [
            tabBarScreenAppBar("Create Event",),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/wednesday-seminar.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/_Buttercup+Circle+Time+Photography+2019+(27+of+262).jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        DottedBorder(
                          borderType: BorderType.Circle,
                          radius: const Radius.circular(12),
                          color: mainColor,
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            height: 25,
                            width: 25,
                            child: Center(
                              child: Icon(Icons.camera_alt,color: mainColor,size: 15,),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                     "Event Detail",
                      style: customTextField(categoryColor, 17, FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    detailTextField("Event Title",double.infinity,"Enter event title",),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        detailTextField("Date",MediaQuery.of(context).size.height*.2,"Enter event DATE",),
                        detailTextField("Time",MediaQuery.of(context).size.height*.2,"Enter event time",),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    detailTextField("Location",double.infinity,"Enter event location",),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Event Partners",
                      style: customTextField(categoryColor, 17, FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Row(
                            children: List.generate(
                                participantsUsers.length,
                                    (index) => participantsUsersBox(
                                    participantsUsers[index].image.toString()))),
                        DottedBorder(
                          borderType: BorderType.Circle,
                          radius: const Radius.circular(12),
                          color: mainColor,
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Center(
                              child: Icon(Icons.add,color: mainColor,size: 30,),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Description",
                      style: customTextField(categoryColor, 17, FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    detailDescriptionTextField("Description",double.infinity,"Enter event description"),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget participantsUsersBox(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage(url),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

}
