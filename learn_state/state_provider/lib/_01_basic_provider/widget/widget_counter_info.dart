import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/_01_basic_provider/widget/model_counter.dart';

class CounterInfo extends StatelessWidget {
  CounterInfo() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== CounterInfo.build');

    return Consumer<CounterModel>(
      builder: (context, counter, child) {
        log('=== Consumer.builder');

        return Text(
          '${counter.value}',
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
