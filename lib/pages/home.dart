import 'package:flutter/material.dart';
import 'package:qa_app/pages/login.dart';
import 'package:qa_app/pages/model_change.dart';
import 'package:qa_app/widget/bottom_navigation.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _widgetList = [bgHeaderHome(), modelForm(), Login()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(
              child: _widgetList[_currentIndex],
            )
          : _widgetList[_currentIndex],
      bottomNavigationBar: BottomNav()
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class ContentArea extends StatelessWidget {
  const ContentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        bgHeaderHome(),
      ],
    );
  }
}

Widget bgHeaderHome() {
  return Container(
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red[800],
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 60,
        left: 20,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Sulaiman Syah Jamal",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              "706436",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            )
          ]),
    ),
  );
}
