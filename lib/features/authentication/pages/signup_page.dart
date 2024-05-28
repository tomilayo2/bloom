import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/Authentication/pages/login_page.dart';
import 'package:bloom/features/Authentication/widgets/social_button.dart';
import 'package:bloom/features/home/pages/disclaimer_page.dart';
import 'package:bloom/services/bloom_service.dart';
import 'package:bloom/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toastification/toastification.dart';

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
  bool _isLoading = false;
  bool _showPassword = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool minimumCharacterValue = false;
  bool hasUpperCaseValue = false;
  bool hasSpecialCharacterValue = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String email = "";
  String password = "";
  final bloomService = BloomService();
  final toast = Toastification();

  Future<void> _registerUser({required String email, required String password}) async {
    setState(() {
      _isLoading = true;
    });
    final result = await bloomService.registerUser(email: email, password: password);

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });
    if(result.isSuccessful){
      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DisclaimerPage()
                    ));
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

  bool _isMinLength = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;

  void _validatePassword(String value) {
    setState(() {
      _isMinLength = value.length >= 6;
      _hasNumber = value.contains(RegExp(r'\d'));
      _hasSpecialChar = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));


      minimumCharacterValue = _isMinLength;
      hasUpperCaseValue = _hasNumber;
      hasSpecialCharacterValue = _hasSpecialChar;
    });
  }

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
                  const SizedBox(height: 20,),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTitle(
                          title: 'Email Address',),
                        CustomTextField(
                         hintText: 'Enter email',
                         keyboardType: TextInputType.emailAddress,
                         controller: emailController,
                         //errorText: '',
                         onChanged: (value){
                          email = value;
                         },
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter an email';
                           } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                             return 'Please enter a valid email address';
                           }
                           return null;
                         },
                        ),
                        const SizedBox(height: 15,),
                        const CustomTitle(
                          title: 'Password',),
                        CustomTextField(
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye_outlined),
                            color: Colors.grey.shade600,
                            onPressed: () {
                              setState(() {
                                _showPassword =!_showPassword;
                              });
                            },),
                          hintText: 'Enter password',
                          controller: passwordController,
                          onChanged: (value){
                            password = value;
                            _validatePassword(value);
                          },
                          obscureText: _showPassword,
                          validator: (value){
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }else if (!_isMinLength) {
                                return 'Password must be at least 8 characters long';
                              } else if (!_hasNumber) {
                                return 'Password must contain at least one number';
                              } else if (!_hasSpecialChar) {
                                return 'Password must contain at least one special character';
                            }
                            // if (value.length < 6) {
                            //   return 'Password must be at least 6 characters long';
                            // }if (value.length < 6) {
                            //   return 'Password must be at least 6 characters long';
                            // }if (value.length < 6) {
                            //   return 'Password must be at least 6 characters long';
                            // }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
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
                            value: minimumCharacterValue,
                            onChanged: (value){
                              setState(() {
                                minimumCharacterValue = value!;
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
                            value: hasUpperCaseValue,
                            onChanged: (value){
                              setState(() {
                                hasUpperCaseValue = value!;
                              });
                            },
                            activeColor: AppColor.appButtonColor,
                            checkColor: AppColor.appGeneralColor,
                          ),
                          const Text("At least 1 capital letter"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: hasSpecialCharacterValue,
                            onChanged: (value){
                              setState(() {
                                hasSpecialCharacterValue = value!;
                              });
                            },
                            activeColor: AppColor.appButtonColor,
                            checkColor: AppColor.appGeneralColor,
                          ),
                          const Text("At least 1 special character, e.g. @, -"),
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
                    isLoading: _isLoading,
                    text: 'Sign Up',
                    onTap: ()async {
                      await _registerUser(email: email, password: password);
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

