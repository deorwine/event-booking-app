import 'package:event/Screens/create_event/create_events.dart';
import 'package:event/Screens/home_screen.dart';
import 'package:event/Screens/myticket/myticket.dart';
import 'package:event/const/colors.dart';
import 'package:event/screens/favourite/favouritescreen.dart';
import 'package:flutter/material.dart';

class RootView extends StatefulWidget {
  @override
  _RootViewState createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MyTicket(),
    CreateEvents(),
    FavouriteScreen(),
    const Text(
      'Coming Soon',
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/home (1).png",
                ),
                size: 18,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/calendar (1).png"),
                size: 18,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/plus.png"),
                size: 30,
                color: Color(0xff024A7A),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/heart.png"),
                size: 18,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/user.png"),
                size: 18,
              ),
              label: ''),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: mainColor,
        unselectedItemColor: bottomNavigationBar,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
