import 'package:flutter/material.dart';
import 'package:qa_app/pages/login.dart';
import 'package:qa_app/pages/model_change.dart';
import 'package:qa_app/widget/header.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List<Widget> _widgetList = [Header(), modelForm(), Login()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(
        child: _widgetList[_currentIndex],
      )
          : _widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: IconThemeData(color: Colors.red[800]),
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        selectedLabelStyle: TextStyle(color: Colors.black),
        fixedColor: Colors.red[800],
        type: BottomNavigationBarType.shifting,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 36),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              size: 36,
            ),
            label: 'Form',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              size: 36,
            ),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

