import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/cubit_counter_3.dart';

class CounterInfoBlocBuilder extends StatelessWidget {
  CounterInfoBlocBuilder() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit3, int>(
      bloc: BlocProvider.of<CounterCubit3>(context),
      builder: (context, state) {
        return Text(
          '$state',
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
