import 'package:demo/util/sizes.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

  String? label;
  final VoidCallback? onPressed;
  Color? labelColor = Colors.white;
  Color? buttonColor = Colors.blue.shade900;

   Buttons({
    Key? key,
    this.label,
    this.onPressed,
    this.labelColor, 
    this.buttonColor
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(label!),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(width(16, context), 32)),
        backgroundColor: MaterialStateProperty.all(buttonColor),
        // foregroundColor: MaterialStateProperty.all(labelColor),
        // textStyle: MaterialStateProperty.all(TextStyle(
        // )),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 32, vertical: 12)
      ),
    ));
  }
}