import 'package:demo/util/sizes.dart';
import 'package:flutter/material.dart';


Widget currency(BuildContext context) {
   return Container(
    width: width(1, context),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Row(children: [
      const CircleAvatar(),
      const SizedBox(
        width: 12,
      ),
      Expanded(
          flex: 1,
          child: Text(
            'Country',
            style: sizes.headline4(context, FontWeight.normal,
                color: Colors.black),
          )),
      Text('867',
          style: sizes.headline4(context, FontWeight.bold, color: Colors.black))
    ]),
  );
}