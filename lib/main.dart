import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'instagram.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Instagram(),
    );
  }
}