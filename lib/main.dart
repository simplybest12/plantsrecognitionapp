import 'package:dev_vantra/IntroScreens/Page3.dart';
import 'package:dev_vantra/IntroScreens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'IntroScreens/Page1.dart';
import 'IntroScreens/Page2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}
