import 'package:flutter/material.dart';

// class Button extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       color: Colors.teal[400],
//       textColor: Colors.black87,
//       child: Text('RATE'),
//       onPressed: () {
//         null;
//         //should send input data to an array that will be sent to
//         //and unpacked by the line chart
//         //should also clear the textfield
//       },
//     );
//   }
// }

// class TextInput extends StatefulWidget {
//   @override
//   TextInputState createState() => TextInputState();
// }

// class TextInputState extends State<TextInput> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 350,
//       child: TextField(
//         // controller: _control,
//         decoration: InputDecoration(
//           hintText: 'From 1 - 10, what level of fatigue are you feeling?',
//         ),
//         onChanged: (String input) {
//           setState(() {
//             // _num = input;
//             // int.parse(_num);
//             print('Howdy');
//           });
//         },
//       ),
//     );
//   }
// }

//-----------------------ERASE BELOW THIS LINE----------------------------------

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.teal[400],
      textColor: Colors.black87,
      child: Text('RATE'),
      onPressed: () => {
        /*
          1) clear textfield
          2) get number from TempHolder
          3) send the number to an array
        */
      },
      //should send input data to an array that will be sent to
      //and unpacked by the line chart
      //should also clear the textfield
    );
  }
}

class TextInput extends StatefulWidget {
  @override
  TextInputState createState() => TextInputState();
}

class TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        // controller: _control,
        decoration: InputDecoration(
          hintText: 'From 1 - 10, what level of fatigue are you feeling?',
        ),
        onSubmitted: (String input) {
          setState(() {
            // assign to a variable to be sent to array
            _TempHolder(int.parse(input));
            print('Howdy');
          });
        },
      ),
    );
  }
}

class _TempHolder {
  int num;

  int get number {
    return this.num;
  }

  _TempHolder(int num) {
    this.num = num;
    print('This is your number: ${num}');
    /*send to another place holder function that will send the value to a
      the array when the button is pressed
    */
  }
}
