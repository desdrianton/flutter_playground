import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter.dart';

class IncreaseButton extends StatelessWidget {
  IncreaseButton() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    var button = OutlinedButton(
      onPressed: () {
        // BlocProvider.of<CounterCubit>(context).increase();
        context.read<CounterCubit2>().increase(); // Same as BlocProvider.of<CounterCubit>(context).increase();
      },
      child: const Text('+'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
