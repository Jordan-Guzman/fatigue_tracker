import 'package:flutter/material.dart';
import 'package:fatigue_tracker/utils/navigator.dart';

//sends data to checker.dart to make sure email is valid form
//email and password go here, as well as account creation.

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text('Login'),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      NavHome(),
                      NavEnterData(),
                      NavViewData(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
