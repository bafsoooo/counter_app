import 'dart:math';

import 'package:counter_app/views/counters_widgets/counter_text.dart';
import 'package:counter_app/views/counters_widgets/increment_counter.dart';
import 'package:counter_app/views/counters_widgets/increment_counter_randomly.dart';
import 'package:counter_app/views/counters_widgets/reset_counter.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<StatefulWidget> {
  var counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void incrementRandomly() {
    setState(() {
      counter += Random().nextInt(10) + 1;
    });
  }

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
        CounterText(counter: '$counter'),
        IncrementCounter(increment: increment),
        IncrementCounterRandomly(incrementRandomly: incrementRandomly),
        ResetCounter(reset: reset),
      ],
    );
  }
}
