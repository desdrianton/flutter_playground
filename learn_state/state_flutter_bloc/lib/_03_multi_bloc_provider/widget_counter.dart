import 'package:flutter/material.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/widget_counter_info_bloc_builder.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/widget_decrease_button.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/widget_increase_button.dart';

class CounterWidget extends StatelessWidget {
  CounterWidget() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DecreaseButton(),
        CounterInfoBlocBuilder(),
        IncreaseButton(),
      ],
    );
  }
}
