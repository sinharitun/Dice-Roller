import 'package:flutter/material.dart';
import 'package:dice_roller/diceroller.dart';
// import 'package:flutter/widgets.dart';

const start = Alignment.topLeft;
const end = Alignment.bottomRight;

class Gradientcontainer extends StatelessWidget {
  const Gradientcontainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 149, 206, 252),
            Color.fromARGB(255, 47, 22, 242),
            Color.fromARGB(255, 9, 5, 51)
          ],
          begin: start,
          end: end,
        ),
      ),
      child: const Center(
        
        child: DiceRoller(),
      ),
    );
  }
}
