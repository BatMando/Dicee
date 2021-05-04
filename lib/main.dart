import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepPurple,
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
  int leftDice=1;
  int rightDice=1;
  void changeNumber(){
    leftDice=Random().nextInt(6)+1;
    rightDice=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: (){
                 setState(() {
                   changeNumber();
                 });
                },
                child: Image.asset('images/dice$leftDice.png'),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                changeNumber();
                  });
                },
                child: Image.asset('images/dice$rightDice.png'),
              )
          )
        ],
      ),
    );
  }
}
