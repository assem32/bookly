import 'package:flutter/material.dart';

const primaryColor=Color(0xff100B20);
const yellowColor=Color(0xffFFDD4F);
const greyColor=Color(0xff707070);
const orangeColor=Color(0xffEF8262);
const transitionDuration=Duration(seconds: 3);

  double getWidth(double designWidth, context) {
  Size size = MediaQuery.of(context).size;
  return (designWidth*size.width)/375;
}



double getHeight(double designHeight, context) {
  Size size = MediaQuery.of(context).size;
  return (designHeight*size.height)/812;
}