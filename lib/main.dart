import 'package:flutter/material.dart';
import 'package:fatigue_tracker/home.dart';
import 'package:fatigue_tracker/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
