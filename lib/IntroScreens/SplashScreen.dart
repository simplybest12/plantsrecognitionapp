import 'package:dev_vantra/IntroScreens/Page1.dart';
import 'package:dev_vantra/IntroScreens/PageChanger.dart';
import 'package:dev_vantra/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

// ignore: depend_on_referenced_packages

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(()=>SmoothPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            "assets/images/splash1.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/logo1.svg',
                semanticsLabel: 'Logo',
                ),
                SizedBox(
                  height: 10,
                ),
             
              ],
            ),
          )
        ]),
      ),
    );
  }
}
