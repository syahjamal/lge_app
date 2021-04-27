import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(child: ContentArea())
          : ContentArea(),
    );
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
        Header(),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[backgroundHeader(), summaryData()],
          ),

          cardDetail('Model', 'Name model change', 'Total', 'out'),
          cardDetail('Model', 'Name model change', 'Total', 'out'),
          cardDetail('Model', 'Name model change', 'Total', 'out'),

        ],
      ),
    );
  }
}

Widget cardDetail(title, description, total, type){
  //Card untuk data detail
}

Widget summaryData(){
  //Container untuk summary data check
}

Widget backgroundHeader(){
  //Container untuk header
  return Container(
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
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
          Text(
            "Sulaiman Syah Jamal",
            style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "706436",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}