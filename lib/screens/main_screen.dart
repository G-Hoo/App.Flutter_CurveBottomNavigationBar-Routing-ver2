import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'add_screen.dart';
import 'alert_screen.dart';
import 'feed_screen.dart';
import 'profile_screen.dart';
import 'shop_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FeedScreen(),
    ShopScreen(),
    AddScreen(),
    AlertScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.easeOutSine,
          animationDuration: const Duration(milliseconds: 300),
          height: 50,
          color: Colors.red,
          backgroundColor: Colors.white,
          items: <Widget>[
            Icon(Icons.view_list, size: 30,color: Colors.white,),
            Icon(Icons.shopping_basket, size: 30,color: Colors.white,),
            Icon(Icons.add, size: 30,color: Colors.white,),
            Icon(Icons.notifications, size: 30,color: Colors.white,),
            Icon(Icons.person , size: 30,color: Colors.white,),
          ],
          onTap: (index) {
            setState((){
              _selectedIndex = index;
            });
            //Handle button tap
          },
        )
    );
  }
}