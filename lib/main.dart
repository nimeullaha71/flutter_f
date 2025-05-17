import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'myApp.dart';

void main(){
  runApp(
    DevicePreview(
        enabled: kDebugMode,
        builder: (context){
      return myApp();
    }),
  );
}
