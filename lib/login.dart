import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2F2F2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //===Start-Komentar-1: Gambar===
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    image: DecorationImage(
                        image: AssetImage('images/header_login.png'),
                        fit: BoxFit.fill)),
              ),
            ),
            //===END-Komentar-1===
            //==Start Komentar-2===
            Container(
                width: MediaQuery.of(context).size.width,
                child: Flexible(
                  child: Card(
                    margin: const EdgeInsets.only(
                        right: 30.0, left: 30.0, bottom: 10.0),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Login Form",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.person,
                                  color: Colors.pink[600],
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                labelText: "NIK : ",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.security,
                                  color: Colors.pinkAccent,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                labelText: "Password :",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            //==End Komentar-2===
            //==Start Komentar-3==
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
                // ignore: deprecated_member_use
                child: Flexible(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    elevation: 8,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
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
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
