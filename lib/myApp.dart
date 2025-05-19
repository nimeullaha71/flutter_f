import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_f/waterTrackerApp.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'Home.dart';
import 'Module9_class2.dart';
import 'calculatrApp.dart';
import 'module11_class1.dart';
import 'module12_class1.dart';
import 'module9-Class1.dart';
import 'module9-class3.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            brightness: Brightness.dark,
              primaryColor: Colors.red,
              appBarTheme: AppBarTheme(
                color: Colors.red,
                centerTitle: true,
              ),
            //scaffoldBackgroundColor: Colors.white,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white
              )
            )
          ),

          title: "Flutter app",
          home: ExpenseTracker(),
        );
      }
    );
  }
}