import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
        bgHeaderHome(),
        submitButton(context),
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

// ignore: missing_return
Widget submitButton(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(20.0),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/model');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0),
              ),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Color(0xFF959095), Color(0xFFBD2024)],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 350.0,
                    minHeight: 36.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Submit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        Divider()
      ],
    ),
  );
}
