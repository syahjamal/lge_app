import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
        //===KOMENTAR-1===
        FormLogin(),
      ],
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.7,
            decoration: BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                image: AssetImage('images/header_login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3.6,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
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
                      TextField(
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
                          labelText: "Email: ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextField(
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
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 5, right: 15.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.blue[400],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
