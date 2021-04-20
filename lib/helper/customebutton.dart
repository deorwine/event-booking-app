import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:flutter/material.dart';


Widget commonButton(String text, VoidCallback onPressed) {
  return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(40)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: MaterialButton(
            onPressed: onPressed,
            child: Center(
              child: Text(
                text,
                style: button(),
              ),
            )),
      ));
}
