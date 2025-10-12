import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  final String counter;

  const CounterText({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text(
      counter,
      style: TextStyle(
        fontSize: 100,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
