import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WithInheritedWidgetApp extends StatelessWidget {
  const WithInheritedWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InfoWarnaInheritedWidget(
          warna1: Colors.red,
          warna2: Colors.yellow,
          warna3: Colors.green,
          warna4: Colors.blue,
          child: Center(
            child: _Kotak1(),
          ),
        ),
      ),
    );
  }
}

class InfoWarnaInheritedWidget extends InheritedWidget {
  final Color warna1;

  final Color warna2;

  final Color warna3;

  final Color warna4;

  const InfoWarnaInheritedWidget({
    Key? key,
    required this.warna1,
    required this.warna2,
    required this.warna3,
    required this.warna4,
    required Widget child,
  }) : super(key: key, child: child,);

  @override
  bool updateShouldNotify(InfoWarnaInheritedWidget oldWidget) => true;
}

class _Kotak1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color warna1 = (context.dependOnInheritedWidgetOfExactType<InfoWarnaInheritedWidget>()!).warna1;
    double side = 200;

    return Container(
      width: side,
      height: side,
      alignment: Alignment.center,
      color: warna1,
      child: _Kotak2(),
    );
  }
}

class _Kotak2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color warna2 = (context.dependOnInheritedWidgetOfExactType<InfoWarnaInheritedWidget>()!).warna2;
    double side = 150;

    return Container(
      width: side,
      height: side,
      alignment: Alignment.center,
      color: warna2,
      child: _Kotak3(),
    );
  }
}

class _Kotak3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color warna3 = (context.dependOnInheritedWidgetOfExactType<InfoWarnaInheritedWidget>()!).warna3;
    double side = 100;

    return Container(
      width: side,
      height: side,
      alignment: Alignment.center,
      color: warna3,
      child: _Kotak4(),
    );
  }
}

class _Kotak4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color warna4 = (context.dependOnInheritedWidgetOfExactType<InfoWarnaInheritedWidget>()!).warna4;
    double side = 50;

    return Container(
      width: side,
      height: side,
      alignment: Alignment.center,
      color: warna4,
      child: const Text('X')
    );
  }
}
