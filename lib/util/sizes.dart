import 'package:flutter/material.dart';

double fontSize(int size, BuildContext context) {
  return MediaQuery.of(context).size.width / size;
}

double width(int size, BuildContext context) {
  return MediaQuery.of(context).size.width / size;
}

double height(int size, BuildContext context) {
  return MediaQuery.of(context).size.height / size;
}

class sizes{

  static TextStyle headline1(BuildContext context, {Color color = Colors.white}){
    return TextStyle(
      fontSize: fontSize(8, context),
      color: color,
    );
  }

  static TextStyle headline2(BuildContext context, FontWeight? fontWeight,
      {Color color = Colors.white}) {
    return TextStyle(
      fontSize: fontSize(12, context),
      color: color,
      fontWeight: fontWeight
    );
  }

  static TextStyle headline3(BuildContext context, FontWeight? fontWeight, {Color color = Colors.white}){
    return TextStyle(
      fontSize: fontSize(16, context),
      color: color,
      fontWeight: fontWeight
    );
  }

  static TextStyle headline4(BuildContext context, FontWeight? fontWeight,
      {Color color = Colors.white}) {
    return TextStyle(
      fontSize: fontSize(24, context),
      color: color,
    );
  }

  static TextStyle headline5(BuildContext context, FontWeight? fontWeight,
      {Color color = Colors.white}) {
    return TextStyle(
      fontSize: fontSize(32, context),
      color: color,
    );
    
  }
}