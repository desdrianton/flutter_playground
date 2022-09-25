import 'package:flutter/material.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/cubit_counter.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/widget_counter_info_bloc_builder.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/widget_counter_info_bloc_listener.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/widget_counter_info_stream_builder.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/widget_decrease_button.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/widget_increase_button.dart';

class CounterWidget extends StatelessWidget {
  CounterWidget() : super(key: UniqueKey());

  final CounterCubit counterCubit = CounterCubit(0);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DecreaseButton(counterCubit),
        const Spacer(),
        Column(
          children: [
            CounterInfoStreamBuilder(counterCubit),
            const SizedBox(height: 100,),
            CounterInfoBlocBuilder(counterCubit),
            const SizedBox(height: 100,),
            CounterInfoBlocListener(counterCubit),
          ],
        ),
        const Spacer(),
        IncreaseButton(counterCubit),
      ],
    );
  }
}
