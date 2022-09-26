import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_05_simple_bloc/bloc/user_event.dart';
import 'package:state_flutter_bloc/_05_simple_bloc/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<ChangeUserName>((event, emit) => emit(state.copyWith(name: event.newName)));
    on<ChangeUserAge>((event, emit) => emit(state.copyWith(age: event.newAge)));
  }

  @override
  void onEvent(UserEvent event) {
    super.onEvent(event);
    log('---------- onEvent: $event');
  }

  @override
  void onTransition(Transition<UserEvent, UserState> transition) {
    super.onTransition(transition);
    log('---------- onTransition: $transition');
  }

  @override
  void onChange(Change<UserState> change) {
    super.onChange(change);
    log('---------- onChange: $change');
  }
}
