import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// ignore: avoid_positional_boolean_parameters
Container detailsScreenAppBar(String title,bool showIcon) {
  // ignore: sized_box_for_whitespace
  return Container(
    height: 50,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Get.back();
          },
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 50,
            width: 50,
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.arrow_back_ios)),
          ),
        ),
        Text(
          title,
          style: textStyleHeader(categoryColor),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 50,
          width: 50,
          child: showIcon == true
              ? const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))
              : Container(),
        ),
      ],
    ),
  );
}
Container tabBarScreenAppBar(String title){
  // ignore: sized_box_for_whitespace
  return Container(
    height: 50,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Get.back();
          },
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 50,
            width: 50,
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.menu)),
          ),
        ),
        Text(
          title,
          style: textStyleHeader(categoryColor),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 50,
          width: 50,
        ),
      ],
    ),
  );
}