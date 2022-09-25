import 'package:flutter_bloc/flutter_bloc.dart';

class StringCubit extends Cubit<String> {
  StringCubit() : super('AAA');

  void toggle() {
    String newState = '';
    if(state == 'AAA') {
      newState = 'BBB';
    } else if(state == 'BBB') {
      newState = 'CCC';
    } else {
      newState = 'AAA';
    }

    emit(newState);
  }
}
