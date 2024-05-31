import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/Authentication/pages/signup_page.dart';
import 'package:bloom/features/doctor/Pages/doctor_availability.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Authentication/widgets/app_button.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        children: [
          // SizedBox(
          //   child: Image.asset("assets/images/rectangle_image.png",),
          // ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFA9B4), Color(0xFFEADAFF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
               Positioned(
                left: 20,
                bottom: 0.3,

                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.appGeneralColor
                  ),
                  child: Image.asset(
                      "assets/images/doctor_profile.png",
                    // height: 50,
                    // width: 50,
                  ),
                ),
              ),
            ],

          ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
               // margin: EdgeInsets.symmetric(horizontal: 30),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: AppColor.appBorderColor)
                ),
                child: Image.asset("assets/icons/chat_icon.png",color: AppColor.appAppColor,),
              ),
              SizedBox(width: 10,),
              Container(
               // margin: EdgeInsets.symmetric(horizontal: 30),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: AppColor.appBorderColor)
                ),
                child: Image.asset("assets/icons/heart_icon.png",color: AppColor.appAppColor,),
              ),
              SizedBox(width: 10,),
              Container(
               // margin: EdgeInsets.symmetric(horizontal: 30),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: AppColor.appBorderColor)
                ),
                child: Image.asset("assets/icons/circum_menu_icon.png",color: AppColor.appAppColor,),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Dr Oluwatomi Ogundijo",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.appTextColor
                ),
              ),
              Text(
                  "Cardiologist | Aston Hospital, UK",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColor.appGColor
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: AppColor.appAppColor),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Column(
                  children: [
                    Text(
                        "Today",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: AppColor.appBrownColor
                      ),
                    ),
                    Text(
                        "2:30 P.M",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColor.appBrownsColor
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: AppColor.appAppColor),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Column(
                  children: [
                    Text(
                        "Today",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: AppColor.appBrownColor
                      ),
                    ),
                    Text(
                        "5:00 P.M",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColor.appBrownsColor
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: AppColor.appAppColor),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Column(
                  children: [
                    Text(
                        "Tomorrow",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: AppColor.appBrownColor
                      ),
                    ),
                    Text(
                        "2:30 P.M",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColor.appBrownsColor
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.appGreyColor),
                    ),
                    child: Icon(Icons.person_outlined)
                  ),
                  SizedBox(height: 10,),
                  Text(
                      "300+",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColor.appGenericColor
                    ),
                  ),
                  Text(
                      "Patients",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColor.appNewColor
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.appGreyColor),
                    ),
                    child: Icon(Icons.graphic_eq)
                  ),
                  SizedBox(height: 10,),
                  Text(
                      "9+",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColor.appGenericColor
                    ),
                  ),
                  Text(
                      "Yrs Experience",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColor.appNewColor
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.appGreyColor),
                    ),
                    child: Icon(Icons.phone_android_outlined)
                  ),
                  SizedBox(height: 10,),
                  Text(
                      "68",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColor.appGenericColor
                    ),
                  ),
                  Text(
                      "Sessions",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColor.appNewColor
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.appGreyColor),
                    ),
                    child: Icon(Icons.message)
                  ),
                  SizedBox(height: 10,),
                  Text(
                      "4.0 ⭐",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColor.appGenericColor
                    ),
                  ),
                  Text(
                      "Ratings",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColor.appNewColor
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "About Me",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.appNewColor
                ),
              ),
              SizedBox(height: 5,),
              Text(
                  "Dr Oluwatomi is an experienced doctor that deals in the treatment and cures of heart-related cases. In my years of experience, I have always put human lives first and always uphold empathy as my motto. \nIn my years of experience, I have always put human lives first and always uphold empathy as my motto.",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColor.appNewColor
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Languages",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.appNewColor
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "English, Yoruba",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColor.appNewColor
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Reviews (10)",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.appNewColor
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Awesome App",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.appNewColor
                    ),
                  ),
                  Text(
                      "Mar 20",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: AppColor.appNewColor
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "⭐ ⭐ ⭐ ⭐ ⭐",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.appNewColor
                    ),
                  ),
                  Text(
                      "Zirachi",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: AppColor.appNewColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(
                "This was my first session with Dr Tomi and I really was glad to have booked an appointment with her. She’s a good listener and helped with all I needed for delivery. I’d surely recommend her to others.",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: AppColor.appNewColor
                ),
              ),
              SizedBox(height: 20,),
              AppButton(
                text: 'View full availability',
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DoctorAvailability()
                  ));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
