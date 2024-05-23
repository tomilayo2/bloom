import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../home/pages/home_page.dart';

class CustomMore extends StatelessWidget {
  const CustomMore({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  final String imagePath;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(imagePath, height: 24, width: 24,),
                Text(
                  text,
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppColor.appTextColor,
                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
            Icon(Icons.arrow_forward_ios, size: 15, color: AppColor.appSubTitleColor,)
          ],
        ),
        onTap: onTap
      ),
    );
  }
}
