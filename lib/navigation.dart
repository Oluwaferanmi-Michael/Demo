import 'package:demo/screens/Cards.dart';
import 'package:demo/screens/Profile.dart';
import 'package:demo/screens/Transactions.dart';
import 'package:demo/screens/Wallets.dart';
import 'package:flutter/material.dart';


class Navigation extends StatefulWidget {
  const Navigation({ Key? key }) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  var pageIndex = 0;
  
  final List<Widget> _pages = const [
    Wallets(),
    Cards(),
    Transactions(),
    Profile()
  ];

  void onSelect(int index){
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[pageIndex],

      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.folder_outlined), label: 'Wallets'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card_outlined), label: 'Cards'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: 'Profile')
        ],
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 14,
      unselectedFontSize: 12,
      selectedItemColor: Colors.blue[900],
      unselectedItemColor: Colors.grey[400],
      backgroundColor: Colors.grey[200],
      
      onTap: onSelect,
      )),
    );
  }
}