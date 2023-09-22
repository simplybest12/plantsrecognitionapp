import 'package:dev_vantra/AuthScreens/AuthScreen.dart';
import 'package:dev_vantra/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final phonenumber = Get.arguments;
  String smsotp = '';
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 30), () {
      Get.back();
    });
  }

  String hideFirstFiveCharacters(String input) {
    if (input == null || input.length < 7) {
      return input;
    }
    final asterisks = '*' * 7;
    final remainingCharacters = input.substring(10);

    return asterisks + remainingCharacters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/framejpgauth.jpg',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 230,
                    ),
                    SvgPicture.asset(
                      'assets/svgs/logo1.svg',
                      semanticsLabel: 'Logo',
                    ),
                    Text(
                      "Enter the code sent on ${hideFirstFiveCharacters(phonenumber)}",
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: Pinput(
                        length: 6,
                        onChanged: (value) {
                          smsotp = value;
                        },
                        focusedPinTheme: PinTheme(
                            height: 50,
                            width: 60,
                            textStyle: TextStyle(color: Colors.green[900]),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                ),
                                borderRadius: BorderRadius.circular(12))),
                        // defaultPinTheme: PinTheme(
                        //     height: 50,
                        //     width: 60,
                        //     decoration: BoxDecoration(
                        //         color: Color.fromARGB(255, 234, 234, 232),
                        //         border: Border.all(
                        //           color: Colors.grey,
                        //         ),
                        //         borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    Container(
                      height: 45,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () async {
                          print(phonenumber);
                          print(smsotp);
                          try {
                            PhoneAuthCredential credential =
                                PhoneAuthProvider.credential(
                                    verificationId: AuthScreen().verify,
                                    smsCode: smsotp);
                            await auth.signInWithCredential(credential);
                            Get.off(HomeScreen());
                          } catch (e) {
                            Get.snackbar("Error", e.toString());
                          }
                        },
                        child: Text(
                          "Verify",
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 17,
                              letterSpacing: 1),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4B6B5B)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
