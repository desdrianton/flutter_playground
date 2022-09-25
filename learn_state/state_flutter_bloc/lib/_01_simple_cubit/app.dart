import 'package:flutter/material.dart';
import 'package:state_flutter_bloc/_01_simple_cubit/widget_counter.dart';

class SimpleCubitApp extends StatelessWidget {
  const SimpleCubitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleCubitPage(),
    );
  }
}

class SimpleCubitPage extends StatelessWidget {
  SimpleCubitPage() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter (using cubit)'),
            const SizedBox(height: 50,),
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}
