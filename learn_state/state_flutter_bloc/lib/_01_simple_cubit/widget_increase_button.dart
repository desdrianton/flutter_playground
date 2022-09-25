import 'package:flutter/material.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/cubit_counter.dart';

class IncreaseButton extends StatelessWidget {
  final CounterCubit counterCubit;

  IncreaseButton(this.counterCubit) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    var button = OutlinedButton(
      onPressed: () {
        counterCubit.increase();
      },
      child: const Text('+'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
