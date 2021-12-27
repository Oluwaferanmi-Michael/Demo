import 'package:demo/util/sizes.dart';
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.blue[900],
              child: Column(
                crossAxisAlignment: 
                CrossAxisAlignment.start,
                children: [
                Row(
                  children: [
                    const SizedBox(height: 120,),
                    Expanded(
                      flex: 1,
                      child: Text('Hello \$miracle', style: sizes.headline2(context, FontWeight.bold))),
                    
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Icon(Icons.capt)
                          IconButton(onPressed: (){}, color: Colors.white, icon: const Icon(Icons.qr_code_2_outlined)),
                        ],
                      ))
                  ],
                ),

                Text('What would you like to do today ?', style: sizes.headline3(context, FontWeight.normal),)
              ],),
            ),
            
          ],
        )
      ),
    );
  }
}