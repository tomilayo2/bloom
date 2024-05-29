import 'package:bloom/features/Authentication/pages/signup_page.dart';
import 'package:bloom/features/home/pages/home_view.dart';
import 'package:bloom/services/bloom_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toastification/toastification.dart';

import '../../../constant/app_color.dart';
import '../../home/pages/disclaimer_page.dart';
import '../../home/pages/home_page.dart';
import '../widgets/app_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_title.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _showPassword = true;
  bool _isLoading = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String email = "";
  String password = "";
  final bloomService = BloomService();
  final toast = Toastification();
  String? validateEmail(String? value) {
    if (!RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{1,253}[a-zA-Z0-9])?)+$")
        .hasMatch(value ?? "") ||
        !value!.endsWith('.com')) {
      return "Please enter a valid email";
    }
    return null;
  }
  Future<void> _loginUser({required String email, required String password}) async {
    setState(() {
      _isLoading = true;
    });
    final result = await bloomService.loginUser(email: email, password: password);

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });
    if(result.isSuccessful){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeView()
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
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTitle(
                          title: 'Email Address',),
                        CustomTextField(
                          hintText: 'Email Address',
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          onChanged: (value){
                            email = value;
                          },
                          validator: validateEmail,
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter an email';
                          //   } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          //     return 'Please enter a valid email address';
                          //   }
                          //   return null;
                          // },
                        ),
                        SizedBox(height: 15,),
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
                          //  _validatePassword(value);
                          },
                          obscureText: _showPassword,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            // } else if (!_isMinLength) {
                            //   return 'Password must be at least 6 characters long';
                            // } else if (!_hasNumber) {
                            //   return 'Password must contain at least one number';
                            // } else if (!_hasSpecialChar) {
                            //   return 'Password must contain at least one special character';
                            }   else if (value.length < 8) {
                              return 'Password must be at least 6 characters long';
                            }
                            return null;
                          },

                        ),
                      ],
                    ),
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
                    isLoading: _isLoading,
                    text: 'Log in',
                    onTap: () async{
                       await _loginUser(email: email, password: password);
                      _formKey.currentState!.validate();
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => DisclaimerPage()
                      //     ));
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



