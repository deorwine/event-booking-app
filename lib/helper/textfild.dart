import 'package:event/const/colors.dart';
import 'package:event/const/textstyle.dart';
import 'package:flutter/material.dart';
Container textField(String hintText,String icon) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15),
    height:40,
    decoration: BoxDecoration(
        color:primaryColor.withOpacity(.1) ,
        borderRadius: BorderRadius.circular(40)
    ),
    child: TextFormField(
      style: textFieldStyle(primaryColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 5),
          hintText: hintText,
          hintStyle: textFieldHintTextStyle(textFieldHintTextColor),
          prefixIcon: Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12),
            height: 40,
            width: 40,
            child: Image.asset("assets/$icon",color: textFieldHintTextColor,),
          ),

          //Icon(icon,size: 15,color: blueColor,),
          border: InputBorder.none
      ),
    ),
  );
}