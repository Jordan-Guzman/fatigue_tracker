import 'package:fatigue_tracker/utils/navigator.dart';
import 'package:flutter/material.dart';

//Will contain the graphs of the user and the descriptions saying the most productive time
//Charts and associated data go on this page!

class View extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              color: c1,
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    NavLogin(),
                    NavHome(),
                    NavEnterData(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
