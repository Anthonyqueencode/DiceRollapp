import 'package:flutter/material.dart';
import './flipApp.dart';

import 'dart:math';

class rollerApp extends StatefulWidget {
  // String queenText;

  const rollerApp({super.key});

  @override
  State<rollerApp> createState() => _rollerAppState();
}

class _rollerAppState extends State<rollerApp> {
  int diceRoll = 1;
  String diceText = 'Your rolled dice will display Here';

  void rollDice() {
    setState(() {
      diceRoll = Random().nextInt(6) + 1;
      diceText = 'You just rolled dice ->$diceRoll<-';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 93, 92, 84),
        Color.fromARGB(255, 25, 25, 24)
      ])),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Image.asset(
                //'assets/images/dice-1.png',
                'assets/image/dice-${diceRoll.toString()}.png',
                height: 210,
                width: 210)),
        TextButton(
          onPressed: rollDice,
          child: const Text('CLICK TO ROLL ME!',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        const SizedBox(height: 100),
        Text(
          textAlign: TextAlign.end,
          diceText,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              color: Color.fromARGB(
                255,
                255,
                255,
                255,
              )),
        )
      ]),
    );
  }
}
