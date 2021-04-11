import 'package:flutter/material.dart';
import 'dart:math';

class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;

  changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    print(leftDiceNumber);
    rightDiceNumber = Random().nextInt(6) + 1;
    print(leftDiceNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
                child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
