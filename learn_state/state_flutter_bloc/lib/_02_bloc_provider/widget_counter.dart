import 'package:flutter/material.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_counter_info_bloc_builder.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_counter_info_bloc_consumer.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_counter_info_bloc_listener.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_counter_info_builder.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_counter_info_stream_builder.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_counter_info_text.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_decrease_button.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_increase_button.dart';

class CounterWidget extends StatelessWidget {
  CounterWidget() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DecreaseButton(),
        const Spacer(),
        Column(
          children: [
            CounterInfoStreamBuilder(),
            const SizedBox(height: 50,),
            CounterInfoBlocBuilder(),
            const SizedBox(height: 50,),
            CounterInfoBlocListener(),
            const SizedBox(height: 50,),
            CounterInfoBlocConsumer(),
            const SizedBox(height: 50,),
            CounterInfoBuilder(),
            const SizedBox(height: 50,),
            CounterInfoText(),
          ],
        ),
        const Spacer(),
        IncreaseButton(),
      ],
    );
  }
}
