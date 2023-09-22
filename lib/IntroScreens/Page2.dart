import 'package:dev_vantra/AuthScreens/AuthScreen.dart';
import 'package:dev_vantra/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                height: 100,
              ),
              Image.asset(
                "assets/images/page2.png",
                width: 300,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Identify your Plants",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Container(
                width: 200,
                child: Divider(),
              ),
              Text("Unleash the worlds of Plants",
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
