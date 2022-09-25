import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter_2.dart';

class CounterInfoBlocListener extends StatelessWidget {
  CounterInfoBlocListener() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit2, int>(
      bloc: BlocProvider.of<CounterCubit2>(context),
      listener: (context, state) {
        if(state > 5 && state % 2 == 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Hanya ditampilkan ketika counter genap > 5 (oleh BlocListener'),
            ),
          );
        }
      },
      child: BlocBuilder<CounterCubit2, int>(
        bloc: BlocProvider.of<CounterCubit2>(context),
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
