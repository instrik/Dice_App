// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice App'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var d1 = 1, d2 = 2, d3 = 3, d4 = 4, d5 = 5, d6 = 6;

  void rollDice() {
    setState(() {
      d1 = Random().nextInt(6) + 1;
      d2 = Random().nextInt(6) + 1;
      d3 = Random().nextInt(6) + 1;
      d4 = Random().nextInt(6) + 1;
      d5 = Random().nextInt(6) + 1;
      d6 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$d1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$d2.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$d3.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$d4.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$d5.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$d6.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
