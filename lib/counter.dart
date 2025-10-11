import 'dart:math';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<StatefulWidget> {

  var counter = 0;

  //increment by one each press
  void increment() {
    setState(() {
      counter++;
    });
  }

  //increment randomly between 1 to 9
  void incrementRandmly() {
    setState(() {
      counter += Random().nextInt(10)+1;
    });
  }

  //reset counter to zero
  void reset() {
    setState(() {
      counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
               children: [
                Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle:const TextStyle(
                      fontSize: 23
                    ),
                  ),
                  child: Text('Increment Counter'),
                ),
                TextButton(
                  onPressed: incrementRandmly,
                  style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.yellow,
                    textStyle:const TextStyle(
                      fontSize: 23
                    ),
                  ),
                  child: Text('increment Counter randomly'),
                ),
                TextButton(
                  onPressed: reset,
                  style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.redAccent,
                    textStyle:const TextStyle(
                      fontSize: 23
                    ),
                  ),
                  child: Text('Reset Counter'),
                )
              ]
            );
  }
}