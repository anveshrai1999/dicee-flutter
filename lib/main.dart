import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green,
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

class _DicePageState extends State<DicePage> {
  @override
  int left = 1;
  int right = 2;

  void changeface() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$left.png'),
                onPressed: () {
                  setState(() {
                    changeface();
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$right.png'),
                onPressed: () {
                  setState(() {
                    changeface();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
