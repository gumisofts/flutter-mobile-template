import 'dart:io' show Platform;

import 'package:device_preview/device_preview.dart';
import 'package:fl/components/themes.dart';
import 'package:fl/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  if (Platform.isAndroid || Platform.isIOS) {
    runApp(const MyApp());
  } else {
    runApp(DevicePreview(builder: (context) => (const MyApp())));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      themeMode: ThemeMode.system,
      getPages: [GetPage(name: '/home', page: () => const Home())],
      initialRoute: '/home',
    );
  }
}
