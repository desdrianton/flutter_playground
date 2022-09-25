import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/cubit_counter.dart';
import 'package:state_flutter_bloc/_02_bloc_provider/widget_counter.dart';

class BlocProviderApp extends StatelessWidget {
  const BlocProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProviderPage(),
    );
  }
}

class BlocProviderPage extends StatelessWidget {
  BlocProviderPage() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter (using BlocProvider)'),
            const SizedBox(height: 50,),
            BlocProvider(
              create: (context) => CounterCubit2(55),
              child: CounterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
