import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:flutter/material.dart';

Container detailTextField(String typename, double width, String hintText) {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          typename,
          style: customTextField(const Color(0xffC1C1C1), 12, FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 45,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(color: borderColor.withOpacity(.5), ),
              borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            style: textFieldStyle(mainColor),
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(14),
                hintText: hintText,
                hintStyle: textFieldHintTextStyle(textFieldHintTextColor),
                border: InputBorder.none),
          ),
        ),
      ],
    ),
  );
}
Container detailDescriptionTextField(String typename, double width, String hintText) {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          typename,
          style: customTextField(const Color(0xffC1C1C1), 12, FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: borderColor.withOpacity(.5), ),
              borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            minLines: 1,
            maxLines: 5,
            style: textFieldStyle(mainColor),
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                hintText: hintText,
                hintStyle: textFieldHintTextStyle(textFieldHintTextColor),
                border: InputBorder.none),
          ),
        ),
      ],
    ),
  );
}