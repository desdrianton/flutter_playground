import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_bloc/_01_basic_bloc/widget/bloc_counter.dart';

class DecreaseButton extends StatelessWidget {
  final CounterBloc counterBloc;

  DecreaseButton(this.counterBloc) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== DecreaseButton.build');

    Widget button = OutlinedButton(
      onPressed: () {
        counterBloc.inputSink.add(CounterEvent.decrease);
      },
      child: const Text('+'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
