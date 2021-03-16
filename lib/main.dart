import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
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
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

enum DiceDirection { Left, Right }

class _DicePageState extends State<DicePage> {
  int numberDiceL = 1;
  int numberDiceR = 1;
  @override
  void initState() {
    super.initState();
    numberDiceL = getRandomDiceNumber();
    numberDiceR = getRandomDiceNumber();
    print('int value: $numberDiceL');
    print('int value: $numberDiceR');
  }

  getRandomDiceNumber() {
    return (new Random()).nextInt(6) + 1;
  }

  onDicePressButton(DiceDirection direction) {
    setState(() {
      switch (direction) {
        case DiceDirection.Left:
          numberDiceL = getRandomDiceNumber();

          print('int value: $numberDiceL');
          break;
        case DiceDirection.Right:
          numberDiceR = getRandomDiceNumber();
          print('int value: $numberDiceR');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: TextButton(
                    onPressed: () {
                      onDicePressButton(DiceDirection.Left);
                    },
                    child: Image.asset('images/dice$numberDiceL.png')),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: TextButton(
                      onPressed: () {
                        onDicePressButton(DiceDirection.Right);
                      },
                      child: Image.asset('images/dice$numberDiceR.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
