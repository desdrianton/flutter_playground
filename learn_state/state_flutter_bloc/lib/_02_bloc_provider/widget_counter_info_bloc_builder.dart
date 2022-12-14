import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter_2.dart';

class CounterInfoBlocBuilder extends StatelessWidget {
  CounterInfoBlocBuilder() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit2, int>(
      bloc: BlocProvider.of<CounterCubit2>(context),
      buildWhen: (previous, current) => current % 2 == 0,
      builder: (context, state) {
        return Text(
          'Using BlocBuilder: $state',
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
