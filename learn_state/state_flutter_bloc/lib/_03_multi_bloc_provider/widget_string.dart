import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/cubit_string.dart';

class StringWidget extends StatelessWidget {
  StringWidget() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    StringCubit stringCubit = BlocProvider.of<StringCubit>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlocBuilder<StringCubit, String>(
          bloc: stringCubit,
          builder: (context, state) {
            return Text(state);
          },
        ),
        TextButton(
          onPressed: () {
            stringCubit.toggle();
          },
          child: const Text('Toggle String'),
        ),
      ],
    );
  }
}
