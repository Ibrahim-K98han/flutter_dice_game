import 'dart:math';

import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {

  const DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  final random = Random.secure();
  var score = 0;
  final diceList = [
      'images/dice_one.png',
      'images/dice_two.png',
      'images/dice_three.png',
      'images/dice_four.png',
      'images/dice_five.png',
      'images/dice_six.png',
  ];

  int? index;

  void _rollTheDice(){
    setState((){
      index = random.nextInt(6);
      score += index! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Total Score: $score',style: TextStyle(fontSize: 40),),
            SizedBox(height: 100,),
            index !=null ? Image.asset(diceList[index!],height: 100,width: 100,fit: BoxFit.cover,)
            :SizedBox(width: 150, height: 150,),
            SizedBox(height: 10,),
            RaisedButton(
              child: Text('Roll The Dice'),
              onPressed: _rollTheDice,
            ),
          ],
        ),
      ),
    );
  }
}
