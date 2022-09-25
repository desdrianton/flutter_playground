import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/_01_basic_provider/widget/model_counter.dart';

class DecreaseButton extends StatelessWidget {
  DecreaseButton() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== DecreaseButton.build');

    var button = OutlinedButton(
      onPressed: () {
        context.read<CounterModel>().decrease();
      },
      child: const Text('-'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
