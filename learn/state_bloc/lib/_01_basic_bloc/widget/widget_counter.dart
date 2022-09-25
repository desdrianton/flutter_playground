import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_bloc/_01_basic_bloc/widget/bloc_counter.dart';
import 'package:state_bloc/_01_basic_bloc/widget/widget_counter_info.dart';
import 'package:state_bloc/_01_basic_bloc/widget/widget_decrease_button.dart';
import 'package:state_bloc/_01_basic_bloc/widget/widget_increase_button.dart';

class CounterWidget extends StatefulWidget {
  CounterWidget() : super(key: UniqueKey());

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  CounterBloc counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    log('=== CounterWidget.build');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DecreaseButton(counterBloc),
        const Spacer(),
        CounterInfo(counterBloc),
        const Spacer(),
        IncreaseButton(counterBloc),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    counterBloc.dispose();
  }
}
