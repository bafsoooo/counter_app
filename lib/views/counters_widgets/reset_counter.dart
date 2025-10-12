import 'package:flutter/material.dart';

class ResetCounter extends StatelessWidget {
  final VoidCallback reset;

  const ResetCounter({super.key, required this.reset});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: reset,
      style: TextButton.styleFrom(
        foregroundColor: Colors.redAccent,
        textStyle: const TextStyle(fontSize: 23),
      ),
      child: Text('Reset Counter'),
    );
  }
}
