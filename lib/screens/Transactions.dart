import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({ Key? key }) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Transactions'),
    ));
  }
}