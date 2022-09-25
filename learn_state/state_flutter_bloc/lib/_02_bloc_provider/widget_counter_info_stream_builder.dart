import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter_2.dart';

class CounterInfoStreamBuilder extends StatelessWidget {
  CounterInfoStreamBuilder() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: BlocProvider.of<CounterCubit2>(context).stream,
      initialData: BlocProvider.of<CounterCubit2>(context).state,
      builder: (context, snapshot) {
        return Text(
          'Using StreamBuilder: ${snapshot.data}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
