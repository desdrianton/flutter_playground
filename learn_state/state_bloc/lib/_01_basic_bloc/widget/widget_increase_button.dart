import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_bloc/_01_basic_bloc/widget/bloc_counter.dart';

class IncreaseButton extends StatelessWidget {
  final CounterBloc counterBloc;

  IncreaseButton(this.counterBloc) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== IncreaseButton.build');

    Widget button = OutlinedButton(
      onPressed: () {
        counterBloc.inputSink.add(CounterEvent.increase);
      },
      child: const Text('+'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
