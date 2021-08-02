import 'package:flutter/material.dart';
import 'package:qstp1/home.dart';
import 'package:qstp1/p1.dart';
import 'package:qstp1/p2.dart';
import 'package:qstp1/p3.dart';
import 'package:qstp1/p4.dart';
import 'package:qstp1/p5.dart';
import 'package:qstp1/end.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/p1': (context) => p1(),
      '/p2': (context) => p2(),
      '/p3': (context) => p3(),
      '/p4': (context) => p4(),
      '/p5': (context) => p5(),
      '/End': (context) => End()
    },
  ));
}
