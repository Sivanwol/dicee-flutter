import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
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
                child: Image.asset('images/dice2.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Image.asset('images/dice1.png')),
            ),
          ],
        ),
      ),
    );
  }
}
