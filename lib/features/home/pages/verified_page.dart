
import 'dart:async';

import 'package:bloom/features/Authentication/pages/signup_page.dart';
import 'package:bloom/features/home/pages/step_one.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../../../constant/app_color.dart';
import '../../Authentication/widgets/app_button.dart';
import '../widgets/content_otp.dart';

class VerifiedPage extends StatefulWidget {
  const VerifiedPage({super.key});

  @override
  State<VerifiedPage> createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {

  int _timeLeft =  30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountDown();
  }
 void _startCountDown() {
   Timer.periodic(Duration(seconds:1), (timer) {
     if (_timeLeft > 0) {
       setState(() {
         _timeLeft --;
       });
     } else {
       _timer?.cancel();
     }
   });
 }

  @override
  void dispose() {
    _timer?.cancel(); // Ensure the timer is canceled when the widget is disposed.
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 75,
      width: 75,
      textStyle: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColor.appBorderColor)
      ),


    );
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/splash_image.png",
                  ),
                  Text(
                    "from pregnancy to parenthood",
                    style: GoogleFonts.inter(
                        color: AppColor.appTitleColor,
                        fontSize: 10
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "OTP Verification",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColor.appTextColor
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                      "Please enter the 4 digit code sent to 0914*****88",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.appTextColor
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                        color: AppColor.appSplashColor,
                        border:Border.all(
                            color: Colors.grey,
                            width: 2.0
                        ),
                      borderRadius: BorderRadius.circular(8.0)
                    )
                ),
                  onCompleted: (pin) => debugPrint(pin),
                  showCursor: true

              ),
            ),
            SizedBox(height: 30,),
            AppButton(
              text: 'Verify OTP',
              onTap: (){
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        AppButton(
                          text: 'Continue',
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StepOne()
                                ));
                          },
                        ),
                      ],
                      title: Image.asset("assets/images/dialogue_image.png"),
                     // contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16,),
                      content: ContentOtp(text: 'OTP verified',),
                    ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      "Didn't receive OTP?",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                          "Resend",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.appAppColor
                        ),
                      )
                  ),
                  Text('$_timeLeft')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


