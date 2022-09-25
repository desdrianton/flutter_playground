import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/cubit_counter.dart';

class CounterInfoBlocConsumer extends StatelessWidget {
  CounterInfoBlocConsumer() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, int>(
      bloc: BlocProvider.of<CounterCubit>(context),
      listener: (context, state) {
        if(state > 5 && state % 2 == 1) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Hanya ditampilkan ketika counter ganjil > 5 (oleh BlocConsumer'),
            ),
          );
        }
      },
      builder: (context, state) {
        return Text(
          'Using BlocConsumer: $state',
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
