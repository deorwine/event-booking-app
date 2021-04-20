import 'dart:ui';
import 'package:event/Helper/customappbar.dart';
import 'package:event/Helper/customebutton.dart';
import 'package:event/Models/participants_users_model.dart';
import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:event/list_data/participantsusers.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class EventDetailScreen extends StatefulWidget {
  @override
  _EventDetailScreenState createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
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
        padding: EdgeInsets.only(
          top: MediaQueryData.fromWindow(window).padding.top,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            detailsScreenAppBar('Details', true),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(Get.arguments.image.toString()),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      Get.arguments.name.toString(),
                      style:
                          customTextField(categoryColor, 19, FontWeight.w600),
                    ),
                    Text(
                      Get.arguments.type.toString(),
                      style:
                          customTextField(categoryColor, 16, FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "By ${Get.arguments.company}",
                      style: customTextField(
                          const Color(0xffC1C1C1), 14, FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date:\nAnd Time:',
                                    style: customTextField(
                                        const Color(0xffC1C1C1), 12, FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "${Get.arguments.date}\n${Get.arguments.time}",
                                    style: customTextField(
                                        categoryColor, 12, FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          Container(
                              height: 8,
                              child: Center(
                                child: Divider(
                                  thickness: 1,
                                  color: borderColor,
                                ),
                              )),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            height: 60,
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location:',
                                    style: customTextField(
                                        const Color(0xffC1C1C1), 12, FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    width: 45,
                                  ),
                                  Text(
                                    Get.arguments.location.toString(),
                                    style: customTextField(
                                        categoryColor, 12, FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'participants',
                      style:
                          customTextField(categoryColor, 15, FontWeight.w600),
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
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: borderColor, width: 2),
                            borderRadius: BorderRadius.circular(50),
                            color: mainColor,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' 10',
                                  style: customTextField(
                                      primaryColor, 13, FontWeight.w400),
                                ),
                                Icon(
                                  Icons.add,
                                  size: 12,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(child: commonButton('Book Ticket', () {})),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
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
