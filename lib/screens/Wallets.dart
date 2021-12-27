import 'package:demo/util/sizes.dart';
import 'package:demo/widgets/Buttons.dart';
import 'package:demo/widgets/currency.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: Colors.blueAccent[400],
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    const SizedBox(
                    height: 42,
                  ),

                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Hello \$miracle', style: sizes.headline3(context, FontWeight.bold))),
                      
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Icon(Icons.capt)
                          IconButton(onPressed: (){}, color: Colors.white, icon: const Icon(Icons.qr_code_2_outlined)),
                        ],
                      )
                    ],
                  ),

                  Text('What would you like to do today ?', style: sizes.headline5(context, FontWeight.normal),),

                  const SizedBox(height: 24),

                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Buttons(label: 'FUND WALLET',
                      ),
                      Buttons(
                        label: 'WITHDRAW',
                      )
                    ],
                  )
                ],),
              ),
            ),

            Container(
              width: width(1, context),
              color: Colors.grey[200],
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('WALLETS', style: sizes.headline4(context, FontWeight.bold, color: Colors.black)
              ),),

              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => currency(context),
                  itemCount: 22,
                  ),
              )
              
          ],
        )
      ),
    );
  }
}