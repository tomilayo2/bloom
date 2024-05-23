import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/app_color.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(bottom: 300.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image),
                     SizedBox(height: 30,),
                     Text(
                      title,
                      style:GoogleFonts.inter(
                          fontSize: 20,
                          color: AppColor.appTitleColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:16.0),
                       child: Text(
                                           subtitle,
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: AppColor.appSubTitleColor
                        ),
                        textAlign: TextAlign.center,
                                           ),
                     ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
