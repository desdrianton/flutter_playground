import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_bloc/_01_basic_bloc/widget/bloc_counter.dart';

class CounterInfo extends StatelessWidget {
  final CounterBloc counterBloc;

  CounterInfo(this.counterBloc) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== CounterInfo.build');

    return StreamBuilder(
      stream: counterBloc.outputStream,
      initialData: counterBloc.counterValue,
      builder: (context, snapshot) {
        log('=== StreamBuilder.builder');

        return Text(
          '${snapshot.data}',
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
