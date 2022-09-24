import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  CounterWidget() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== CounterWidget.build');

    return ChangeNotifierProvider(
      create: (context) => _CounterModel(),
      builder: (context, child) {
        log('=== ChangeNotifierProvider.builder');

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [_DecreaseButton(), const Spacer(), _CounterInfo(), const Spacer(), _IncreaseButton()],
        );
      },
    );
  }
}

class _CounterModel with ChangeNotifier {
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

class _CounterInfo extends StatelessWidget {
  _CounterInfo() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== CounterInfo.build');

    return Consumer<_CounterModel>(
      builder: (context, counter, child) {
        log('=== Consumer.builder');

        return Text(
          '${counter.value}',
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}

class _DecreaseButton extends StatelessWidget {
  _DecreaseButton() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== DecreaseButton.build');

    var button = OutlinedButton(
      onPressed: () {
        context.read<_CounterModel>().decrease();
      },
      child: const Text('-'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}

class _IncreaseButton extends StatelessWidget {
  _IncreaseButton() : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    log('=== IncreaseButton.build');

    var button = OutlinedButton(
      onPressed: () {
        context.read<_CounterModel>().increase();
      },
      child: const Text('+'),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: button,
    );
  }
}
