import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/cubit_counter_3.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/cubit_string.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/widget_counter.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/widget_string.dart';

class MultiBlocListener3 extends StatelessWidget {
  MultiBlocListener3() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<StringCubit, String>(
          listener: (context, state) {
            if (state == 'CCC') {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('String is CCC'),
                ),
              );
            }
          },
        ),
        BlocListener<CounterCubit3, int>(
          listener: (context, state) {
            if (state > 5) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Lebih dari lima'),
                ),
              );
            }
          },
        ),
      ],
      child: Column(
        children: [
          CounterWidget(),
          const SizedBox(
            height: 100,
          ),
          StringWidget(),
        ],
      ),
    );
  }
}
