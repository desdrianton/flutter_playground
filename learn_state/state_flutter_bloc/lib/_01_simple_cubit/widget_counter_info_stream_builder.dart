import 'package:flutter/material.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/cubit_counter.dart';

class CounterInfoStreamBuilder extends StatelessWidget {
  final CounterCubit counterCubit;

  CounterInfoStreamBuilder(this.counterCubit) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: counterCubit.stream,
      initialData: counterCubit.state,
      builder: (context, snapshot) {
        return Text(
          'Using StreamBuilder: ${snapshot.data}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
