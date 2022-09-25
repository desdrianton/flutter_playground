import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialValue) : super(initialValue);

  void increase() => emit(state + 1);

  void decrease() => emit(state - 1);
}
