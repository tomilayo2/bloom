import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.hintText,
    this.keyboardText,
  });

  final String hintText;
  final TextInputType? keyboardText;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.appBorderColor),
          borderRadius: BorderRadius.circular(8.0)
      ),
      // margin: EdgeInsets.symmetric(horizontal: 16.0),
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          keyboardType: keyboardText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.inter(
                fontSize: 12,
                color: AppColor.appGreyColor,
                fontWeight: FontWeight.w400
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
