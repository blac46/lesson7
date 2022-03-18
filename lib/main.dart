import 'package:flutter/material.dart';
import 'package:lesson7/plant.dart';
import 'package:lesson7/welcomback.dart';
import 'package:lesson7/welcome.dart';
import 'package:lesson7/wiki.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Welcomeback(),
    );
  }
}

