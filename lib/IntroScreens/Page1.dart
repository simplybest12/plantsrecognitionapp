import 'package:dev_vantra/AuthScreens/AuthScreen.dart';
import 'package:dev_vantra/IntroScreens/Page2.dart';
import 'package:dev_vantra/homepage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: Color(0xffEBEBEB)),
                    onPressed: () {
                      Get.off(AuthScreen());
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(
                  width: 10,
                )
              ]),
              SizedBox(
                height: 140,
              ),
              Image.asset(
                'assets/images/page1image1.jpg',
              width: 300,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome to DhanVantri",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Container(
                width: 200,
                child: Divider(),
              ),
              Text("Enjoy your Life with Plants",
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 14)),
              Spacer(),
              Container(
                height: 45,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Swipe Next  >",
                    style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                        color: Colors.white, fontSize: 17, letterSpacing: 1),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4B6B5B)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
