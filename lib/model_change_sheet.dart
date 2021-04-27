import 'package:flutter/material.dart';

// ignore: camel_case_types
class modelChange extends StatelessWidget {
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
          cardDetail('Model', 'Name model change', '1000', 'out'),
          cardDetail('Model', 'Name model change', '2000', 'in'),
          cardDetail('Model', 'Name model change', '3000', 'out'),
        ],
      ),
    );
  }
}

Widget cardDetail(title, description, total, type) {
  //Card untuk data detail
  return Card(
    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
    elevation: 8,
    child: ListTile(
      leading: Icon(
        type == 'out' ? Icons.subdirectory_arrow_left:Icons.subdirectory_arrow_right,
        color: type == 'out' ? Colors.redAccent:Colors.lightGreen,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(description),
      trailing: Text(
        total+" Pcs",
        style: TextStyle(color: type == 'out' ? Colors.redAccent:Colors.lightGreen),
      ),
    ),
  );
}

Widget summaryData() {
  //Container untuk summary data check
  return Positioned(
    top: 120,
    left: 26,

    child: Container(
      width: 340,
      height: 120,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Model Change"),
                Divider(),
                Text(
                  "data",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text("Total Target"),
                Divider(),
                Text(
                  "data",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]
        ),
      ),
    ),
  );
}

Widget backgroundHeader() {
  //Container untuk header
  return Container(
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red[800],
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
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
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
