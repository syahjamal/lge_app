import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFFF2F2F2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //===Start-Komentar-1: Gambar===
            Container(
              margin: EdgeInsets.only(left: 2, right: 2),
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  image:
                      DecorationImage(image: AssetImage('images/lg_logo.png'), fit: BoxFit.fill)),
            ),
            //===END-Komentar-1===
            //==Start Komentar-2===
            Text(
              "LIFE'S GOOD",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800],
                  fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Lorem ipsum color dit amet",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            //==End Komentar-2===
            //==Start Komentar-3==
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xffa88e8e), Color(0xFFB30B20)],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(80.0),
                    ),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 150.0,
                    minHeight: 50.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
