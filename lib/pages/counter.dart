import 'package:counter_app/providers/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterModel>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
        children: [
        Text(
          '${counterProvider.counter}',
          style: TextStyle(
            fontSize: 100,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      TextButton(
          onPressed: counterProvider.increment,
          style: TextButton.styleFrom(
          // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle:const TextStyle(
              fontSize: 23
            ),
          ),
          child: Text('Increment Counter'),
        ),
        Consumer<CounterModel>(
          builder: (_, counterProvider, __) {
            return TextButton(
              onPressed: counterProvider.decrement,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.yellow,
                textStyle: const TextStyle(
                  fontSize: 23
                ),
              ),
              child: Text('Decrement Counter'),
            );
          },
        ),
        TextButton(
          onPressed: counterProvider.reset,
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