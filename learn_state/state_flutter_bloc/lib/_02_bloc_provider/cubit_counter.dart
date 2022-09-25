import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit2 extends Cubit<int> {
  CounterCubit2(int initialValue) : super(initialValue);

  void increase() => emit(state + 1);

  void decrease() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    log('-------------------- onChange: $change');
  }
}
