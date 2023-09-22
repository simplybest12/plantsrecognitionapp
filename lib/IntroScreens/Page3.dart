import 'package:dev_vantra/AuthScreens/AuthScreen.dart';
import 'package:dev_vantra/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                Image.asset(
                  "assets/images/page3image.jpg",
                  width:340,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Discover new Plants",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                Container(
                  width: 200,
                  child: Divider(),
                ),
                Text("Lets Plant With Us",
                    style: GoogleFonts.lato(color: Colors.black, fontSize: 14)),
                Spacer(),
                Container(
                  height: 45,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(AuthScreen());
                    },
                    child: Text(
                      "Get Started",
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
      ),
    );
  }
}
