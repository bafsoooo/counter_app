import 'package:flutter/material.dart';

class IncrementCounter extends StatelessWidget {
  final VoidCallback increment;

  const IncrementCounter({super.key, required this.increment});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: increment,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 23),
      ),
      child: Text('Increment Counter'),
    );
  }
}
