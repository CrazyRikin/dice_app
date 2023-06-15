import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/images/dice-3.png';

  rollDice() {
    setState(() {
      var number = randomizer.nextInt(6) + 1; //0<=number<7
      activeImage = 'assets/images/dice-$number.png';
    });
    print('changing image....'); //gives message to terminal
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeImage,
        width: 200,
      ),
      const SizedBox(height: 20), //adds spaces btween two widget
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            //padding: const EdgeInsets.all(20),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30)),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
