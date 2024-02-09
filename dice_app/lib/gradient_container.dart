import 'package:flutter/material.dart';
import 'package:first_app_new/dice_roller.dart';
//import 'package:first_app_new/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.backcolor({super.key})
      : color1 = const Color.fromARGB(255, 253, 56, 56),
        color2 = const Color.fromARGB(255, 250, 138, 97);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
