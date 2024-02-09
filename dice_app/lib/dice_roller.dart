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
  var currentDiceRoll = 1;
  
  void rollDice() { 
    setState(() {
    currentDiceRoll = randomizer.nextInt(6) + 1; // 1-6 
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(15),
            textStyle: const TextStyle(
              fontSize: 20,
            ),
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 105, 101, 101),
          ),
          child: const Text('Roll the dice'),
        ),
      ],
    );
  }
}
