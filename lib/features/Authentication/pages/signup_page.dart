import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/Authentication/pages/login_page.dart';
import 'package:bloom/features/Authentication/widgets/social_button.dart';
import 'package:bloom/features/home/pages/disclaimer_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_title.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _value = 1;

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
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
                                "Sign Up",
                              style: GoogleFonts.inter(
                                color: AppColor.appAppColor,
                                fontSize: 14
                              ),
                            )
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                              color: AppColor.appSubTitleColor,
                              fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                      "Bloom with Us",
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
                      CustomTitle(
                        title: 'Email Address/Phone Number',),
                     CustomTextField(hintText: 'Enter email/phone number',),
                      SizedBox(height: 15,),
                      CustomTitle(
                        title: 'Password',),
                      CustomTextField(
                       suffixIcon: Icon(
                         Icons.remove_red_eye_outlined,color: Colors.grey.shade600,),
                        hintText: '********',
                     ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: 1,
                  //             groupValue: _value,
                  //             activeColor: AppColor.appAppColor,
                  //             visualDensity: const VisualDensity(
                  //               horizontal: VisualDensity.minimumDensity,
                  //               vertical: VisualDensity.minimumDensity,
                  //             ),
                  //             onChanged: (value){
                  //               setState(() {
                  //                 _value = value!;
                  //               });
                  //             }
                  //         ),
                  //         SizedBox(width: 5.0,),
                  //         Text(
                  //             "Minimum of 8 characters",
                  //           style: GoogleFonts.inter(
                  //               fontSize: 12,
                  //               fontWeight: FontWeight.w400,
                  //               color: AppColor.appSubTitleColor
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: 2,
                  //             groupValue: _value,
                  //             activeColor: AppColor.appAppColor,
                  //             visualDensity: const VisualDensity(
                  //               horizontal: VisualDensity.minimumDensity,
                  //               vertical: VisualDensity.minimumDensity,
                  //             ),
                  //             onChanged: (value){
                  //               setState(() {
                  //                 _value = value!;
                  //               });
                  //             }
                  //         ),
                  //         SizedBox(width: 5.0,),
                  //         Text(
                  //             "At least 1 capital letter",
                  //           style: GoogleFonts.inter(
                  //               fontSize: 12,
                  //               fontWeight: FontWeight.w400,
                  //               color: AppColor.appSubTitleColor
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: 3,
                  //             groupValue: _value,
                  //             activeColor: AppColor.appAppColor,
                  //             visualDensity: const VisualDensity(
                  //               horizontal: VisualDensity.minimumDensity,
                  //               vertical: VisualDensity.minimumDensity,
                  //             ),
                  //             onChanged: (value){
                  //               setState(() {
                  //                 _value = value!;
                  //               });
                  //             }
                  //         ),
                  //         SizedBox(width: 5.0,),
                  //         Text(
                  //             "At least 1 special character, e.g. @, -",
                  //           style: GoogleFonts.inter(
                  //               fontSize: 12,
                  //               fontWeight: FontWeight.w400,
                  //               color: AppColor.appSubTitleColor
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // )
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: value,
                            onChanged: (value){
                              setState(() {
                                this.value = value!;
                              });
                            },
                            activeColor: AppColor.appButtonColor,
                            checkColor: AppColor.appGeneralColor,
                          ),
                          Text("Minimum of 8 characters"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: value,
                            onChanged: (value){
                              setState(() {
                                this.value = value!;
                              });
                            },
                            activeColor: AppColor.appButtonColor,
                            checkColor: AppColor.appGeneralColor,
                          ),
                          Text("Minimum of 8 characters"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: value,
                            onChanged: (value){
                              setState(() {
                                this.value = value!;
                              });
                            },
                            activeColor: AppColor.appButtonColor,
                            checkColor: AppColor.appGeneralColor,
                          ),
                          Text("Minimum of 8 characters"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: "By Signing Up, I confirm that I agree to Bloom’s ",
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000)
                              ),
                            ),
                            TextSpan(
                              text: " Terms",
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.appAppColor
                              ),
                            ),
                            TextSpan(
                              text: " and",
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000)
                              ),
                            ),
                            TextSpan(
                              text: " Privacy Policy",
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.appAppColor
                              ),
                            ),
                          ]
                      )
                  ),
                  SizedBox(height: 20,),
                  AppButton(
                    text: 'Sign Up',
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DisclaimerPage()
                          ));
                    },
                  ),
                  // SizedBox(height: 20,),
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
                  //           "OR",
                  //         style: GoogleFonts.inter(
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w500,
                  //             color: Color(0xFF667185)
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //         child: Divider(
                  //           color: Color(0xFFE4E7EC),
                  //           height: 36,
                  //           thickness: 1.8,
                  //         ),
                  //     )
                  //   ],
                  // ),
                  // SizedBox(height: 25,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SocialButton(
                  //         imagePath: "assets/images/google_image.png",
                  //       onTap: (){},
                  //     ),
                  //     SizedBox(width: 40,),
                  //     SocialButton(
                  //       imagePath: "assets/images/ios_image.png",
                  //       onTap: (){},
                  //     ),
                  //
                  //   ],
                  // ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text(
                          "Already a Bloomer?",
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
                                MaterialPageRoute(builder: (context) => LogInPage()
                                ));
                          },
                          child: Text(
                              "Login",
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

