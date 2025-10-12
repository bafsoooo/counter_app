import 'package:counter_app/controller/counter_cubit.dart';
import 'package:counter_app/views/counters_widgets/counter_text.dart';
import 'package:counter_app/views/counters_widgets/increment_counter.dart';
import 'package:counter_app/views/counters_widgets/increment_counter_randomly.dart';
import 'package:counter_app/views/counters_widgets/reset_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, counter) {
          final cubit = context.read<CounterCubit>();
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CounterText(counter: '$counter'),
              IncrementCounter(increment: cubit.increment),
              IncrementCounterRandomly(
                incrementRandomly: cubit.incrementRandomly,
              ),
              ResetCounter(reset: cubit.reset),
            ],
          );
        },
      ),
    );
  }
}
