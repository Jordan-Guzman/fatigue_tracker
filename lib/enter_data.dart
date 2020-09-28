import 'package:flutter/material.dart';
import 'package:fatigue_tracker/utils/navigator.dart';
import 'package:fatigue_tracker/utils/user_input.dart';

/*
  Will have the button and text field to append the data to the array, 
  which is then sent to checker.dart and then to chart.dart
*/

class EnterData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Rate Your Fatigue'),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          color: Colors.green[300],
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 100,
                left: ((screen - 350) / 2),
                child: Container(
                  color: Colors.redAccent[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextInput(),
                          Button(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IntrinsicWidth(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            NavLogin(),
                            NavHome(),
                            NavViewData(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
