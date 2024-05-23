import 'package:bloom/features/doctor/Pages/doctor_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class DoctorsCard extends StatelessWidget {
  const DoctorsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset("assets/images/tomi_two_image.png"),
              Positioned(
                top: 16,
                left: 5,
                child: Container(
                  padding: EdgeInsets.all(2),
                  // margin: EdgeInsets.all(16),
                  height: 20,
                  width: 55,
                  decoration: BoxDecoration(
                      color: AppColor.appOffColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      border: Border.all(color: AppColor.appGreyColor)
                  ),
                  child: Text(
                    "Top rated",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: AppColor.appGenericColor
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 12,
                child: Container(
                    padding: EdgeInsets.all(2),
                    // margin: EdgeInsets.all(8),
                    // height: 25,
                    // width: 60,
                    decoration: BoxDecoration(
                        color: AppColor.appOffColor,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        border: Border.all(color: AppColor.appGreyColor)
                    ),
                    child: Image.asset("assets/images/love_image.png",color: AppColor.appAppColor,)
                ),
              )
            ],
          ),
          Text(
            "Dr Oluwatomi Ogundijo",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColor.appTextColor
            ),
          ),
          SizedBox(height: 4,),
          Text(
            "Cardiologist, UK",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColor.appTextColor
            ),
          ),
          SizedBox(height: 4,),
          Row(
            children: [
              Text(
                "4.0 ⭐",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColor.appTextColor
                ),
              ),
              SizedBox(width: 4,),
              Text(
                "(68 sessions)",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColor.appTextColor
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(16.0),
               height: 50,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColor.appButtonColor,
                  borderRadius: BorderRadius.all(Radius.circular(14))
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Check Availability",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColor.appTextColor
                  ),
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorProfile()));
            },
          )
        ],
      ),
    );
  }
}
