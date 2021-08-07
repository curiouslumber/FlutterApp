import 'package:flutter/material.dart';
import 'package:myskills/auth/google.dart';
import 'auth/authentication.dart';
import 'home/home.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/second': (context) => Authentication(),
        '/google': (context) => GoogleSign()
      },
    );
  }
}
