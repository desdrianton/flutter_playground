import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/cubit_counter.dart';

class CounterInfoBlocBuilder extends StatelessWidget {
  final CounterCubit counterCubit;

  CounterInfoBlocBuilder(this.counterCubit) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: counterCubit,
      builder: (context, state) {
        return Text(
          'Using BlocBuilder: $state',
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
