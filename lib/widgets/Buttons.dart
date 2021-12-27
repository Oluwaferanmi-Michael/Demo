import 'package:demo/util/sizes.dart';
import 'package:flutter/cupertino.dart';
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
      child: Container(
        alignment: Alignment.center,
        width: width(2.5, context),
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[900]
        ),
        // width: width(4, context) + 24,
        height: 42,
        child: Text(label!, style: sizes.headline4(context, FontWeight.bold),)),
      
    );
  }
}