import 'package:flutter/material.dart';
import 'Home.dart';

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
      home: Home(),
    );
  }
}