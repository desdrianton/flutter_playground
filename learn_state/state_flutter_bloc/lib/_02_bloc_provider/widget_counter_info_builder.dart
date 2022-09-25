import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter_2.dart';

class CounterInfoBuilder extends StatelessWidget {
  CounterInfoBuilder() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        int counterValue = context.watch<CounterCubit2>().state;
        return Text(
          'Using Builder: $counterValue',
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
