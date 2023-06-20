import 'package:flutter/material.dart';
import './flipApp.dart';
import 'homepage.dart';

void main() => runApp(QueenDice());
//var display = 'assets/image/dicy1.jpg';
var textColor = Colors.blue;

class QueenDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}
