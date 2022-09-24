import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_provider/_01_basic_provider/widget/widget_counter.dart';

class BasicProviderApp extends StatelessWidget {
  const BasicProviderApp({Key? key}) : super(key: key);

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
            const Text('Counter'),
            const SizedBox(height: 50,),
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}
