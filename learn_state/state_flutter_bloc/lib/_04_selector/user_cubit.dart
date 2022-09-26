import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_04_selector/user_model.dart';

class UserCubit extends Cubit<UserModel> {
  UserCubit() : super(UserModel('', 0));

  changeName() {
    String newName = state.name + 'A-';

    emit(UserModel(newName, state.age));
  }

  changeAge() {
    int newAge = state.age + 1;

    emit(UserModel(state.name, newAge));
  }
}
