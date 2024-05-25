import 'package:bloom/features/Authentication/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../home/pages/disclaimer_page.dart';
import '../widgets/app_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_title.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
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
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.inter(
                                color: AppColor.appAppColor,
                                fontSize: 14
                            ),
                          )
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        //margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: AppColor.appSplashColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(6.0)
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            "Login",
                            style: GoogleFonts.inter(
                                color: AppColor.appSubTitleColor,
                                fontSize: 14
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Welcome Back, Bloomer",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTitle(
                        title: 'Email Address/Phone Number',),
                      CustomTextField(hintText: 'Email Address/Phone Number',),
                      SizedBox(height: 15,),
                      const CustomTitle(
                        title: 'Password',),
                      CustomTextField(
                        suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey.shade600,),
                        hintText: '********',
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  // Container(
                  //   // margin: EdgeInsets.only(left: 10, right: 10),
                  //   //alignment: Alignment.center,
                  //   //width: 400,
                  //   width: double.infinity,
                  //   height: 48,
                  //   child: ElevatedButton(
                  //     onPressed: (){
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(builder: (context) => LogInPage()
                  //           ));
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //         backgroundColor: AppColor.appButtonColor,
                  //         foregroundColor: AppColor.appTitleColor,
                  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                  //
                  //     ),
                  //     child: Text(
                  //       "Login",
                  //       style: GoogleFonts.inter(
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.w600,
                  //           color: AppColor.appTextColor
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  AppButton(
                    text: 'Log in',
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DisclaimerPage()
                          ));
                    },
                  ),
                  // SizedBox(height: 25,),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Divider(
                  //         color: Color(0xFFE4E7EC),
                  //         height: 36,
                  //         thickness: 1.8,
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Text(
                  //         "OR",
                  //         style: GoogleFonts.inter(
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w500,
                  //             color: Color(0xFF667185)
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Divider(
                  //         color: Color(0xFFE4E7EC),
                  //         height: 36,
                  //         thickness: 1.8,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // SizedBox(height: 30,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: (){},
                  //       child: Container(
                  //           height: 50,
                  //           width: 50,
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Color(0xFF98A2B3)
                  //               )
                  //           ),
                  //           child: Image.asset("assets/images/google_image.png")
                  //       ),
                  //     ),
                  //     SizedBox(width: 40,),
                  //     GestureDetector(
                  //       onTap: (){},
                  //       child: Container(
                  //           height: 50,
                  //           width: 50,
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Color(0xFF98A2B3)
                  //               )
                  //           ),
                  //           child: Image.asset("assets/images/ios_image.png")
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      Text(
                        "New to Bloom?",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColor.appTitleColor
                        ),

                      ),
                      TextButton(
                          onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpPage()));
                          },
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColor.appAppColor
                            ),
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



