import 'package:flutter/material.dart';

class Wallets extends StatefulWidget {
  const Wallets({ Key? key }) : super(key: key);

  @override
  _WalletsState createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32,),

            Row()
          ],
        )
      ),
    );
  }
}