import 'package:fatigue_tracker/utils/navigator.dart';
import 'package:flutter/material.dart';

/*
  Button to send to view data page
  Button to send to enter data page
  A nice UI
*/

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Homepage'),
        ),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              NavLogin(),
              NavEnterData(),
              NavViewData(),
              NavVisualizer(),
            ],
          ),
        ),
      ),
    );
  }
}
