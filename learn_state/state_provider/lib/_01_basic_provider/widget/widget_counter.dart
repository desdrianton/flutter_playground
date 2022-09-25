import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/_01_basic_provider/widget/model_counter.dart';
import 'package:state_provider/_01_basic_provider/widget/widget_counter_info.dart';
import 'package:state_provider/_01_basic_provider/widget/widget_decrease_button.dart';
import 'package:state_provider/_01_basic_provider/widget/widget_increase_button.dart';

class CounterWidget extends StatelessWidget {
  CounterWidget() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== CounterWidget.build');

    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      builder: (context, child) {
        log('=== ChangeNotifierProvider.builder');

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DecreaseButton(),
            const Spacer(),
            CounterInfo(),
            const Spacer(),
            IncreaseButton(),
          ],
        );
      },
    );
  }
}
