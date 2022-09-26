import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_04_selector/user_cubit.dart';
import 'package:state_flutter_bloc/_04_selector/user_model.dart';

class SelectorExampleApp extends StatelessWidget {
  const SelectorExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  ExamplePage() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: ExampleView(),),
      ),
    );
  }
}

class ExampleView extends StatelessWidget {
  ExampleView() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('------------------- Rebuild view');

    var nameBlocSelector = BlocSelector<UserCubit, UserModel, String>(
      selector: (userModel) => userModel.name,
      builder: (context, userName) {
        log('------------------- Rebuild name');

        return Text('Name: $userName');
      }
    );

    var ageBlocSelector = BlocSelector<UserCubit, UserModel, int>(
      selector: (userModel) => userModel.age,
      builder: (context, userAge) {
        log('------------------- Rebuild age');

        return Text('Age: $userAge');
      },
    );

    var nameChanger = TextButton(
      child: const Text('Name changer'),
      onPressed: () {
        context.read<UserCubit>().changeName();
      },
    );

    var ageChanger = TextButton(
      child: const Text('Age changer'),
      onPressed: () {
        context.read<UserCubit>().changeAge();
      },
    );

    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        nameBlocSelector,
        ageBlocSelector,
        const SizedBox(height: 100,),
        nameChanger,
        ageChanger,
      ],
    );
  }
}
