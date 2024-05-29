
import 'dart:async';

import 'package:bloom/features/Authentication/pages/signup_page.dart';
import 'package:bloom/features/home/pages/step_one.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:toastification/toastification.dart';
import '../../../constant/app_color.dart';
import '../../../services/bloom_service.dart';
import '../../Authentication/widgets/app_button.dart';
import '../widgets/content_otp.dart';

class VerifiedPage extends StatefulWidget {
  const VerifiedPage({super.key, required this.email});
  final String email;

  @override
  State<VerifiedPage> createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {

  int _timeLeft =  30;
  Timer? _timer;
  bool canResend = false;
  bool _isLoading = false;
  final bloomService = BloomService();
  final toast = Toastification();
  String _otp = '';

  @override
  void initState() {
    super.initState();
    _startCountDown();
  }
 void _startCountDown() {
   Timer.periodic(const Duration(seconds:1), (timer) {
     if (_timeLeft > 0) {
       setState(() {
         _timeLeft --;
       });
     } else {
       canResend = true;
       _timer?.cancel();
     }
   });
 }
  void _resendOtp() {
   Timer.periodic(const Duration(seconds:1), (timer) {
     if (canResend){
       setState(() {
          _timeLeft = 30;
          canResend = false;
       });
       _startCountDown();
     }
   }
   );
   //   if (_timeLeft > 0) {
   //     setState(() {
   //       _timeLeft --;
   //     });
   //   } else {
   //     _timer?.cancel();
   //   }
   // });
  }

  @override
  void dispose() {
    _timer!.cancel(); // Ensure the timer is canceled when the widget is disposed.
    super.dispose();
  }

  Future<void> _verifyOtp({required String otp, required String email}) async {
    setState(() {
      _isLoading = true;
    });
    final result = await bloomService.verifyOtp(otp:otp, email: email);

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });
    if (result.isSuccessful) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            AppButton(
              text: 'Continue',
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => StepOne()),
                      (route) => false,
                );
              },
            ),
          ],
          title: Image.asset("assets/images/dialogue_image.png"),
          content: ContentOtp(text: 'OTP verified'),
        ),
      );
    }else{
      toast.show(
        context: context,
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        alignment: Alignment.bottomCenter,
        primaryColor: Colors.red,
        description: const SizedBox.shrink(),
        autoCloseDuration: const Duration(seconds: 3),
        title: Text(result.message),
      );
    }
  }
  void _onVerifyButtonPressed() {
    if (_otp.length == 4) {
      _verifyOtp(otp: _otp, email: widget.email);
    }
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
                  onCompleted: (pin) {
                  _otp = pin;
                  },
                  showCursor: true

              ),
            ),
            SizedBox(height: 30,),
            AppButton(
              text: 'Verify OTP',
              isLoading: _isLoading,
              onTap: _onVerifyButtonPressed,
            ),

            // AppButton(
            //   text: 'Verify OTP',
            //   isLoading: _isLoading,
            //   onTap: _otp.length == 4 ? _verifyOtp : null,
              // onTap:(){
              //   showDialog(
              //       context: context,
              //       builder: (context) => AlertDialog(
              //         actions: [
              //           AppButton(
              //             text: 'Continue',
              //             onTap: () async{
              //             await _verifyOtp(otp: otp, email: email);
              //                 (){
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(builder: (context) => StepOne()
              //                   ));
              //             },
              //           ),
              //         ],
              //         title: Image.asset("assets/images/dialogue_image.png"),
              //        // contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16,),
              //         content: ContentOtp(text: 'OTP verified',),
              //       ),
              //   );
              // },
           // ),
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
                  canResend?TextButton(
                      onPressed: (){
                        _resendOtp();
                      },
                      child: Text(
                          "Resend",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.appAppColor
                        ),
                      )
                  ):
                  Text('00:${_timeLeft.toString()}')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


