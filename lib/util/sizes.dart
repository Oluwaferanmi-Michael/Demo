
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

fontSize(int size, BuildContext context) {
  return MediaQuery.of(context).size.width / size;
}

class sizes{

  static TextStyle headline1(BuildContext context, {Color color = Colors.white}){
    return TextStyle(
      fontSize: fontSize(8, context),
      color: color,
    );
  }

  static TextStyle headline2(BuildContext context,
      {Color color = Colors.white}) {
    return TextStyle(
      fontSize: fontSize(16, context),
      color: color,
    );
  }

  static TextStyle headline3(BuildContext context,
      {Color color = Colors.white}) {
    return TextStyle(
      fontSize: fontSize(24, context),
      color: color,
    );
  }

  static TextStyle headline4(BuildContext context,
      {Color color = Colors.white}) {
    return TextStyle(
      fontSize: fontSize(32, context),
      color: color,
    );
  }
}