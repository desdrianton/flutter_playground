import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/cubit_counter.dart';

class CounterInfoBlocListener extends StatelessWidget {
  final CounterCubit counterCubit;

  CounterInfoBlocListener(this.counterCubit) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit, int>(
      bloc: counterCubit,
      listener: (context, state) {
        if(state > 5 && state % 2 == 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Hanya ditampilkan ketika counter genap > 5 (oleh BlocListener'),
            ),
          );
        }
      },
      child: BlocBuilder<CounterCubit, int>(
        bloc: counterCubit,
        builder: (context, state) {
          return Text(
            'Using BlocListener: $state',
            style: const TextStyle(fontWeight: FontWeight.bold),
          );
        },
      ),
    );
  }
}
