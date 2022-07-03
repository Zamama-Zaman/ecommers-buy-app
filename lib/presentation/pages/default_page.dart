// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/home_page.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  final _items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.directions_car_filled,
        ),
        label: "Ride"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.help_outline,
        ),
        label: "Help"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.account_circle,
        ),
        label: "Account"),
  ];

  final _screens = <Widget>[
    HomePage(),
    Center(child: Text("RIDE")),
    Center(child: Text("HELP")),
    Center(child: Text("ACCOUNT")),
  ];

  int _pageNavIndex = 0;

  Widget _bottomNavBar2() {
    return BottomNavigationBar(
      currentIndex: _pageNavIndex,
      onTap: (index) => setState(() => _pageNavIndex = index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF201B19),
      items: _items,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBar2(),
      body: _screens[_pageNavIndex],
    );
  }
}
