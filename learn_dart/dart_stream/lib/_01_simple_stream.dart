import 'dart:developer';

import 'package:flutter/material.dart';

class SimpleStreamApp extends StatelessWidget {
  const SimpleStreamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('=== SimpleStreamApp.build');

    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage() : super(key: UniqueKey());

  Stream<int> _myStream(int howMany) async* {
    for(int i = 0; i < howMany; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  Widget _myStreamBuilder() {
    return StreamBuilder(
      stream: _myStream(100),
      builder: (context, snapshot) {
        log('=== StreamBuilder.builder');
        return Text('Value: ${snapshot.data}');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    log('=== MyPage.build');

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Simple Stream'),
            const SizedBox(height: 50,),
            _myStreamBuilder(),
          ],
        ),
      ),
    );
  }
}
