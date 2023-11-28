import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dadu'),
          centerTitle: true,
          elevation: 0,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int topLeftDice = 1;
  int topRightDice = 1;
  int downLeftDice = 1;
  int downRightDice = 1;

  void randomDice() {
    topLeftDice = Random().nextInt(6) + 1;
    topRightDice = Random().nextInt(6) + 1;
    downLeftDice = Random().nextInt(6) + 1;
    downRightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      randomDice();
                    },
                    child: Image.asset("images/dice$topLeftDice.png"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      randomDice();
                    },
                    child: Image.asset("images/dice$topRightDice.png"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      randomDice();
                    },
                    child: Image.asset("images/dice$downLeftDice.png"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      randomDice();
                    },
                    child: Image.asset("images/dice$downRightDice.png"),
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
