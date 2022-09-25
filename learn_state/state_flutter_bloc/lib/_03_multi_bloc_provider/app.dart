import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/cubit_counter_3.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/cubit_string.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/widget_counter.dart';
import 'package:state_flutter_bloc/_03_multi_bloc_provider/widget_string.dart';

class MultiBlocProviderApp extends StatelessWidget {
  const MultiBlocProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProviderPage(),
    );
  }
}

class MultiBlocProviderPage extends StatelessWidget {
  MultiBlocProviderPage() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter (using MultiBlocProvider)'),
            const SizedBox(height: 0,),
            MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => CounterCubit3(0)),
                BlocProvider(create: (context) => StringCubit()),
              ],
              child: Column(
                children: [
                  CounterWidget(),
                  const SizedBox(height: 100,),
                  StringWidget(),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
