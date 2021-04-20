import 'dart:ui';
import 'package:dotted_line/dotted_line.dart';
import 'package:event/Helper/customappbar.dart';
import 'package:event/Helper/customebutton.dart';
import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:flutter/material.dart';

class MyTicket extends StatefulWidget {
  @override
  _MyTicketState createState() => _MyTicketState();
}

class _MyTicketState extends State<MyTicket> {
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
            tabBarScreenAppBar("My Tickets"),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/201912021941-main.cropped_1575290539.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Cimanggis music",
                    style: customTextField(categoryColor, 19, FontWeight.w600),
                  ),
                  Text(
                    "Festival",
                    style: customTextField(categoryColor, 16, FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date",
                              style: customTextField(const Color(0xffC1C1C1), 12, FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "24 March 2021",
                              style: customTextField(categoryColor, 13, FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time's",
                              style: customTextField(const Color(0xffC1C1C1), 12, FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "11 : 00 AM",
                              style: customTextField(categoryColor, 13, FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: customTextField(const Color(0xffC1C1C1), 12, FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Lapdek Concvertion Center, SMI",
                          style: customTextField(categoryColor, 13, FontWeight.w500),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const DottedLine(
                    dashLength: 5.0,
                    dashColor: Color(0xffC1C1C1),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width-70,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/barcode-png.webp"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(child: Text('123456789987654321',style: customTextField(Colors.black, 12, FontWeight.w400),)),
                  const SizedBox(
                    height: 30,
                  ),
                  commonButton("Save Ticket",(){}),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
