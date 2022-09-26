import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter_2.dart';

class CounterInfoText extends StatelessWidget {
  CounterInfoText() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Text(
      'Using Text: ${context.watch<CounterCubit2>().state}',
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
