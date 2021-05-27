import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
            child: Text(
          'Click to roll',
          style: TextStyle(fontFamily: 'Pacifico', fontSize: 35.0),
        )),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 6;
  void rollDice() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                      onPressed: () {
                        rollDice();
                      },
                      child: Image.asset('images/roll$leftDiceNum.png'))),
              Expanded(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                      onPressed: () {
                        rollDice();
                      },
                      child: Image.asset('images/roll$rightDiceNum.png'))),
            ],
          ),
          SizedBox(
            height: 200.0,
          ),
          Text(
            'Made with Dart by Praveen',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Source Sans Pro',
            ),
          ),
        ],
      ),
    );
  }
}
