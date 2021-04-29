import 'package:flutter/material.dart';
import 'package:qa_app/pages/get_started.dart';
import 'package:qa_app/pages/home.dart';
import 'package:qa_app/pages/model_change_sheet.dart';
import 'package:qa_app/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => GetStarted(),
        '/login':(context) => Login(),
        '/home':(context) => Home(),
        '/model':(context) => modelChange(),
      },
    );
  }
}