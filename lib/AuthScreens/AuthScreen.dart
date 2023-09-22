import 'package:dev_vantra/AuthScreens/otpscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sign_button/sign_button.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class AuthScreen extends StatefulWidget {
    
   AuthScreen({super.key});
    String verify = "";

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String phonenumber = "";
  String number = "";


  // final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 230,
                      ),
                      SvgPicture.asset(
                        'assets/svgs/logo1.svg',
                        semanticsLabel: 'Logo',
                      ),
                      Container(
                        width: 350,
                        height: 90,
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey, width: 1),
                        //     borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: IntlPhoneField(
                            onChanged: (value) {
                              phonenumber = value.completeNumber;
                              number = value.number;
                            },
                            initialCountryCode: "IN",
                            decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)))),
                            pickerDialogStyle: PickerDialogStyle(
                                backgroundColor: Colors.white,
                                countryCodeStyle:
                                    const TextStyle(color: Color(0xff005138)),
                                countryNameStyle:
                                    const TextStyle(color: Colors.black),
                                padding: const EdgeInsets.all(20)),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            child: Divider(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("or"),
                          SizedBox(
                            width: 10,
                          ),
                          Container(width: 120, child: Divider())
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16)),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/googleicon.png',
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Text(
                                  "Get in with Google",
                                  style: GoogleFonts.lato(color: Colors.black),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                          height: 48,
                          padding: EdgeInsets.only(left: 10),
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16)),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/githubicon.png',
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Text(
                                  "Get in with Github",
                                  style: GoogleFonts.lato(color: Colors.black),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 110,
                      ),
                      Container(
                        height: 45,
                        width: 350,
                        child: ElevatedButton(
                          onPressed: () {
                            if (number != "") {
                              Get.to(OTP(), arguments: phonenumber);
                            } else {
                              Get.snackbar("Forgot?", "Please type your number",
                                  icon: Icon(Icons.error_outline_rounded),
                                  shouldIconPulse: true);
                            }
                          },
                          child: Text(
                            "Continue",
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff4B6B5B)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void verifyUserPhoneNumber() {
  //   _auth.verifyPhoneNumber(
  //     phoneNumber: phonenumber,
  //     verificationCompleted: (PhoneAuthCredential credential) async {},
  //     verificationFailed: (FirebaseAuthException e) {
  //       print(e.message.toString());
  //       if (e.code == 'invalid-phone-number') {
  //         print('The provided phone number is not valid.');
  //       }
  //     },
  //     codeSent: (String verificationId, int? resendToken) {
  //       // this.verificationId.value = verificationId;
  //       widget.verify = verificationId;
  //       Get.to(OTP());
  //       print("Code sent");
  //       phonenumber = '';
  //       setState(() {});
  //       phonenumber = '';
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {
  //       // this.verificationId.value = verificationId;
  //       print("Timed Out");
  //     },
  //   );
  // }
}
