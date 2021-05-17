
import 'package:flutter/material.dart';
import 'package:esewa_app/homePage.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List _widgetOptions = [
    HomePage(),
    Text(
      'Business',
      style: optionStyle,
    ),
    Text(
      'Scan & Pay',
      style: optionStyle,
    ),
    Text(
      'My Payment',
      style: optionStyle,
    ),
    Text(
      'Offers',
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
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70,
          color: Colors.black54,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomAppBarItem(

                iconData: Icons.home_outlined,
                text: 'Home',
                onPressed: () { },
              ),
              BottomAppBarItem(
                iconData: Icons.assignment_outlined,
                text: 'Statement',
                onPressed: () { },
              ),
              BottomAppBarItem(
                text: 'Scan & Pay',
              ),
              BottomAppBarItem(
                iconData: Icons.payment_outlined,
                text: 'Payment',
                onPressed: () {},
              ),
              BottomAppBarItem(
                iconData: Icons.account_circle_outlined,
                text: 'Offers',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          child: Icon(Icons.qr_code_scanner_outlined),
          backgroundColor: Colors.green,
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.transparent,
    );
  }
}

class BottomAppBarItem extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function onPressed;

  const BottomAppBarItem({Key key, this.iconData, this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.green,size: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
