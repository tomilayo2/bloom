import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/app_color.dart';

class ContentOtp extends StatelessWidget {
  const ContentOtp({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColor.appTextColor
      ),
    );
  }
}
