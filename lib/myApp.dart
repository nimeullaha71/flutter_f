import 'package:flutter/material.dart';
import 'Home.dart';
import 'Module9_class2.dart';
import 'module9-Class1.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            color: Colors.red,
            centerTitle: true,
          )),
      title: "Flutter app",
      home: module9(),
    );
  }
}