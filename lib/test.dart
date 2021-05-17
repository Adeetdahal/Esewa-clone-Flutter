import 'package:flutter/material.dart';
import 'package:esewa_app/homePage.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List _widgetOptions = [
    HomePage(),
    Text(
      'Index 1: Statement',
      style: optionStyle,
    ),
    Text(
      'Index 2: Scan & Pay',
      style: optionStyle,
    ),
    Text(
      'Index 3: My Payment',
      style: optionStyle,
    ),

    Text(
      'Index 4: Offers',
      style: optionStyle,
    ),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: Container(
      color: Colors.black54,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.green,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.green,),
            label: 'Statement',
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: "Scan & Pay",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment,color: Colors.green,),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,color: Colors.green,),
            label: 'offers',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.black54,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 14.0,
        selectedFontSize: 14.0,
        iconSize: 30.0,
      ),
    ),
    floatingActionButton: Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        child: Icon(Icons.qr_code_scanner_outlined,size: 35.0,color: Colors.black,),
        backgroundColor: Colors.green,
        onPressed: () {},
        elevation: 2.0,
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //backgroundColor: Colors.transparent,
  );
}
}
