import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WithoutInheritedWidgetApp extends StatelessWidget {
  const WithoutInheritedWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kotak1 = const _Kotak1(
      warna1: Colors.red,
      warna2: Colors.yellow,
      warna3: Colors.green,
      warna4: Colors.blue,
    );

    return MaterialApp(
      home: Scaffold(
        body: Center(child: kotak1,),
      ),
    );
  }
}

class _Kotak1 extends StatelessWidget {
  final Color warna1;

  final Color warna2;

  final Color warna3;

  final Color warna4;

  const _Kotak1({required this.warna1, required this.warna2, required this.warna3, required this.warna4,});

  @override
  Widget build(BuildContext context) {
    double side = 200;

    return Container(
      width: side,
      height: side,
      color: warna1,
      alignment: Alignment.center,
      child: _Kotak2(warna2: warna2, warna3: warna3, warna4: warna4,),
    );
  }
}

class _Kotak2 extends StatelessWidget {
  final Color warna2;

  final Color warna3;

  final Color warna4;

  const _Kotak2({required this.warna2, required this.warna3, required this.warna4,});

  @override
  Widget build(BuildContext context) {
    double side = 150;

    return Container(
      width: side,
      height: side,
      color: warna2,
      alignment: Alignment.center,
      child: _Kotak3(warna3: warna3, warna4: warna4),
    );
  }
}

class _Kotak3 extends StatelessWidget {
  final Color warna3;

  final Color warna4;

  const _Kotak3({required this.warna3, required this.warna4,});

  @override
  Widget build(BuildContext context) {
    double side = 100;

    return Container(
      width: side,
      height: side,
      color: warna3,
      alignment: Alignment.center,
      child: _Kotak4(warna4: warna4,),
    );
  }
}

class _Kotak4 extends StatelessWidget {
  final Color warna4;

  const _Kotak4({required this.warna4,}) : super();

  @override
  Widget build(BuildContext context) {
    double side = 50;

    return Container(
      width: side,
      height: side,
      color: warna4,
    );
  }
}
