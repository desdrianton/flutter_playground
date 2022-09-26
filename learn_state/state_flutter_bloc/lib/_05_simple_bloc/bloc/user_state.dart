import 'package:equatable/equatable.dart';

class UserState extends Equatable {
  const UserState({this.name = '', this.age = 0});

  final String name;

  final int age;

  @override
  List<Object?> get props => [name, age];

  UserState copyWith({
    String? name,
    int? age,
  }) =>
      UserState(
        name: name ?? this.name,
        age: age ?? this.age,
      );
}
