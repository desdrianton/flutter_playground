import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter.dart';

class DecreaseButton extends StatelessWidget {
  DecreaseButton() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    var button = OutlinedButton(
      onPressed: () {
        BlocProvider.of<CounterCubit2>(context).decrease();
      },
      child: const Text('-'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
