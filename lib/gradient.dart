import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

//import 'package:dice_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientClass extends StatelessWidget {
  const GradientClass(this.colorone, this.colortwo, {super.key});
  const GradientClass.purple({super.key})
      : colorone = const Color.fromARGB(255, 11, 0, 57),
        colortwo = const Color.fromARGB(255, 17, 18, 87);

  final Color colorone;
  final Color colortwo;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorone, colortwo],
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
