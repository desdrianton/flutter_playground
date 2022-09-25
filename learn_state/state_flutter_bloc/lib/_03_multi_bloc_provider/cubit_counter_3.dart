import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit3 extends Cubit<int> {
  CounterCubit3(int initialValue) : super(initialValue);

  void increase() => emit(state + 1);

  void decrease() => emit(state - 1);
}
