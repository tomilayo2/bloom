import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIcon, required this.hintText,
  });

  final Widget? suffixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.appBorderColor),
          borderRadius: BorderRadius.circular(8.0)
      ),
     // margin: EdgeInsets.symmetric(horizontal: 16.0),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          decoration: InputDecoration(
              suffixIcon: suffixIcon,
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
