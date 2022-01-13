import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../app/my_app.dart';
import '../utils/dependency/dependency_injection.dart' as di;

void main() async {
  await di.init();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
      enabled: false,
    ),
  );
}
