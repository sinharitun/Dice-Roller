import 'dart:math';

import 'package:flutter/material.dart';

var activeDice='assests/dice-1.png';

class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _ControlDiceRunner();
  }
}

class _ControlDiceRunner extends State<DiceRoller>{
  
  
  void start()
  {
    
    setState(() {
      var randomizer=Random().nextInt(6) +1;
      activeDice='assests/dice-$randomizer.png';
    });
  }

  @override
  Widget build(contect){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDice,
              width: 150.0
            ),
            TextButton(
              onPressed: start,
              
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('roll it'),
            ),
          ],
        );
  }
}