import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../home/pages/Reminder_page.dart';

class AvailableTime extends StatelessWidget {
  const AvailableTime({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color(0xFFE4E7EC),
                  width: 2.0
              )
          )
      ),
      child: GestureDetector(
          onTap: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  title,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColor.appTextColor
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 20, color: AppColor.appAppColor,)
            ],
          )
      ),
    );
  }
}
