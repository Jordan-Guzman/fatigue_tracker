import 'package:fatigue_tracker/login.dart';
import 'package:fatigue_tracker/home.dart';
import 'package:fatigue_tracker/enter_data.dart';
import 'package:fatigue_tracker/view_data.dart';
import 'package:flutter/material.dart';

import 'package:fatigue_tracker/visualizer.dart';

/*
  Button to send to Login
  Button to send to Homepage
  Button to send to view data page
  Button to send to enter data page
*/

//Button to send to Login
class NavLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Login'),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
          ModalRoute.withName('/'),
        );
      },
    );
  }
}

//Button to send to Homepage
class NavHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Homepage'),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
          ModalRoute.withName('/'),
        );
      },
    );
  }
}

//Button to send to Enter Data page
class NavEnterData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Enter Data'),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => EnterData(),
          ),
          ModalRoute.withName('/'),
        );
      },
    );
  }
}

//Button to send to View Data page
class NavViewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('View Data'),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => View(),
          ),
          ModalRoute.withName('/'),
        );
      },
    );
  }
}

//ERASE AFTER
class NavVisualizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Visualization'),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Viewer(),
          ),
          ModalRoute.withName('/'),
        );
      },
    );
  }
}
