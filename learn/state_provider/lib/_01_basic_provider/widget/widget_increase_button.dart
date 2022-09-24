import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/_01_basic_provider/widget/model_counter.dart';

class IncreaseButton extends StatelessWidget {
  IncreaseButton() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== IncreaseButton.build');

    var button = OutlinedButton(
      onPressed: () {
        context.read<CounterModel>().increase();
      },
      child: const Text('+'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
