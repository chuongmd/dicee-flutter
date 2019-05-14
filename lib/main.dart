import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumberButton = 1;
  int rightNumberButton = 1;

  void randomNumber() {
    return setState(() {
      leftNumberButton = Random().nextInt(6) + 1;
      rightNumberButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          // Left button
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNumber();
              },
              child: Image.asset('images/dice$leftNumberButton.png'),
            ),
          ),
          // Right button
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNumber();
              },
              child: Image.asset('images/dice$rightNumberButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
