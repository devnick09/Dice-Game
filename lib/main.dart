import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('The Dice'),
          backgroundColor: Colors.blue.shade900,
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

  int leftDiceNumber= 1;
  int rightDiceNumber = 1;
  randumDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              child:
              FlatButton(
            onPressed: (){
              randumDice();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )
          ),
          Expanded(
              child:
              FlatButton(
            onPressed: (){
              randumDice();
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )
          )
        ],
      ),
    );
  }
}


