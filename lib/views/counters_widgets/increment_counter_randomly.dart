import 'package:flutter/material.dart';

class IncrementCounterRandomly extends StatelessWidget {
  final VoidCallback incrementRandomly;

  const IncrementCounterRandomly({super.key, required this.incrementRandomly});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: incrementRandomly,
      style: TextButton.styleFrom(
        foregroundColor: Colors.yellow,
        textStyle: const TextStyle(fontSize: 23),
      ),
      child: Text('increment Counter randomly'),
    );
  }
}
