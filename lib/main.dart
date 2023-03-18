import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.black12,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceClick = 1;
  int rightDiceClick = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceClick = Random().nextInt(6) + 1;
      rightDiceClick = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              child: Image.asset('images/dice$leftDiceClick.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
              child: ElevatedButton(
            child: Image.asset('images/dice$rightDiceClick.png'),
            onPressed: () {
              changeDiceFace();
            },
          )),
        ],
      ),
    );
  }
}
