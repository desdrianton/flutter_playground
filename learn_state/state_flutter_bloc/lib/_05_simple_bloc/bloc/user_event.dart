import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class ChangeUserName extends UserEvent {
  const ChangeUserName({required this.newName});

  final String newName;

  @override
  List<Object?> get props => [newName,];
}

class ChangeUserAge extends UserEvent {
  const ChangeUserAge({required this.newAge});

  final int newAge;

  @override
  List<Object?> get props => [newAge,];
}