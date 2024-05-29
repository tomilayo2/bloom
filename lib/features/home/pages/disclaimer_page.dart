import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/home/pages/step_one.dart';
import 'package:bloom/features/home/pages/verified_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Authentication/widgets/app_button.dart';

class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Column(
            children: [
              RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome to Bloom!",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor.appTitleColor
                        ),
                      ),
                      TextSpan(
                        text: " We're excited to have \nyou join our community of mothers and mothers-to-be.",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColor.appTitleColor
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Text(
                  "Bloom offers helpful information to learn about pregnancy and motherhood. But remember, this information is not meant to replace advice from your doctor. If you have any questions or worries, always talk to your healthcare provider first.",
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.appTitleColor
                ),
              ),
              SizedBox(height: 400,),
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
              //           MaterialPageRoute(builder: (context) => StepOne()
              //           ));
              //     },
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: AppColor.appButtonColor,
              //         foregroundColor: AppColor.appTitleColor,
              //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
              //
              //     ),
              //     child: Text(
              //       "I Understand",
              //       style: GoogleFonts.inter(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w600,
              //           color: AppColor.appTextColor
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: AppButton(
                  text: 'I Understand',
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifiedPage(
                          email: email,
                        )
                        ));
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
