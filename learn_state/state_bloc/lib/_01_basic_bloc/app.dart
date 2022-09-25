import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_bloc/_01_basic_bloc/widget/widget_counter.dart';

class BasicBlocApp extends StatelessWidget {
  const BasicBlocApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('=== BasicProviderApp.build');

    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== MyPage.build');

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter (using bloc)'),
            const SizedBox(height: 50,),
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}
