import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_05_simple_bloc/bloc/user_bloc.dart';
import 'package:state_flutter_bloc/_05_simple_bloc/bloc/user_event.dart';
import 'package:state_flutter_bloc/_05_simple_bloc/bloc/user_state.dart';

class SimpleBlocApp extends StatelessWidget {
  const SimpleBlocApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: const SafeArea(child: MyView(),),
    );
  }
}

class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var nameSelector = BlocSelector<UserBloc, UserState, String>(
      selector: (state) => state.name,
      builder: (context, name) => Text('Name: $name'),
    );

    var ageSelector = BlocSelector<UserBloc, UserState, int>(
      selector: (state) => state.age,
      builder: (context, age) => Text('Age: $age'),
    );

    var changeNameButton = TextButton(
      onPressed: () {
        UserState currentUserState = BlocProvider.of<UserBloc>(context).state;

        BlocProvider.of<UserBloc>(context).add(ChangeUserName(newName: currentUserState.name + '-A'));
      },
      child: const Text('Change Name'),
    );

    var changeAgeButton = TextButton(
      onPressed: () {
        UserState currentUserState = BlocProvider.of<UserBloc>(context).state;

        BlocProvider.of<UserBloc>(context).add(ChangeUserAge(newAge: currentUserState.age + 1));
      },
      child: const Text('Change Name'),
    );

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Text('Using UserBloc', style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 50,),
        nameSelector,
        const SizedBox(height: 10,),
        ageSelector,
        const SizedBox(height: 50,),
        changeNameButton,
        const SizedBox(height: 10,),
        changeAgeButton,
      ],
    );
  }
}
