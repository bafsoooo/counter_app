import 'package:counter_app/providers/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter App'),
      ),
      body: 
      Container(
        color: Color.fromARGB(255, 11, 149, 50),
        alignment: Alignment.center,
        child: ChangeNotifierProvider<CounterModel>(
          create:(context) => CounterModel(),
          child: Counter()
        )
        ),    
      ),
    );
  }
}