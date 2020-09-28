import 'package:flutter/material.dart';
import 'package:fatigue_tracker/chart_test.dart';

class Viewer extends StatelessWidget {
  final List arr = [2, 4, 6, 7, 1, 5];
  @override
  Widget build(BuildContext context) {
    Color c1 = const Color(0x398BFF);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('View Data'),
        ),
      ),
      body: Container(
        child: Visualization(),
      ),
    );
  }
}
