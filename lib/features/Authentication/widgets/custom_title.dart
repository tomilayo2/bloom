import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 12,
              color: AppColor.appTextColor,
              fontWeight: FontWeight.w600
          ),
        ));
  }
}

