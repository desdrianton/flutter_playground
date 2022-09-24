import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BasicProviderApp extends StatelessWidget {
  const BasicProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        title: 'Basic Provider App',
        home: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter value: '),
            const SizedBox(
              height: 50,
            ),
            _counterInfo(),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [_decreaseButton(context), _increaseButton(context)],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ],
        ),
      ),
    );
  }

  Widget _counterInfo() {
    return Consumer<CounterModel>(
      builder: (context, counter, child) {
        return Text(
          '${counter.value}',
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        );
      },
    );
  }

  Widget _decreaseButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.read<CounterModel>().decrease();
      },
      child: const Text('Decrease'),
    );
  }

  Widget _increaseButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.read<CounterModel>().increase();
      },
      child: const Text('Increase'),
    );
  }
}

class CounterModel with ChangeNotifier {
  int value = 0;

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    value--;
    notifyListeners();
  }
}
