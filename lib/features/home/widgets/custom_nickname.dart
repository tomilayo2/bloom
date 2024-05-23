import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class CustomNickname extends StatelessWidget {
  const CustomNickname({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 13),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.appBorderColor),
              borderRadius: BorderRadius.circular(8.0)
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle:  GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColor.appGreyColor,
                    fontWeight: FontWeight.w400
                ),
                border: InputBorder.none
            ),
          ),
        )
      ],
    );
  }
}

