import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle textStyleHeader(Color color) {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
      color: color,
      fontSize: 15);
}

TextStyle textStyleHeader2() {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
      color: primaryColor,
      fontSize: 20);
}

TextStyle textFieldStyle(Color color) {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
      color: color,
      fontSize: 13);
}


TextStyle textFieldHintTextStyle(Color color) {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
      color: color,
      fontSize: 12);
}

TextStyle category(Color color) {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
      color: color,
      fontSize: 15);
}

TextStyle viewAll(Color color) {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
      color: color,
      fontSize: 12);
}
TextStyle customTextField(Color color,double fontSize,FontWeight fontWeight) {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize);
}
TextStyle button() {
  return TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
      color: primaryColor,
      fontSize: 12);
}