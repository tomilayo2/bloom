import 'package:bloom/features/Authentication/pages/login_page.dart';
import 'package:bloom/features/more/pages/view_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../Authentication/widgets/app_button.dart';
import '../../home/pages/home_page.dart';
import '../widgets/custom_more.dart';
import '../widgets/image_button.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "More",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColor.appTextColor
                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications_none_outlined, color: AppColor.appAppColor,)
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
               // padding: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                ),
                child: Image.asset("assets/images/avatar_image.png"),

              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Anna Cliff,",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Container(
                    height: 30,
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ViewProfile()));
                        },
                        child: Text(
                            "View Profile",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              color: AppColor.appAppColor,
                              fontWeight: FontWeight.w500
                          ),
                        )
                    ),
                  )
                ],
              ),
              SizedBox(width: 50,),
              Expanded(
                child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: AppColor.appButtonColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Text("Upgrade to premium "),
                      ),
                      onTap: (){},
                    )
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "General",
              style: GoogleFonts.inter(
                  fontSize: 14,
                  color: AppColor.appNewColor,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Container(
            height: 120,
            width: 300,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColor.appContColor
            ),
            child: Column(
              children: [
                CustomMore(
                  imagePath: 'assets/images/right_image.png',
                  text: 'Delivery Checklist',
                  onTap: () {},
                ),
                CustomMore(
                  imagePath: 'assets/images/tabler_image.png',
                  text: 'Baby Names',
                  onTap: () {},
                ),
                CustomMore(
                  imagePath: 'assets/images/love_image.png',
                  text: 'Favorite Doctors',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Settings",
              style: GoogleFonts.inter(
                  fontSize: 14,
                  color: AppColor.appNewColor,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColor.appContColor
            ),
            child: Column(
              children: [
                CustomMore(
                  imagePath: 'assets/images/settings_image.png',
                  text: 'Theme',
                  onTap: () {},
                ),
                CustomMore(
                  imagePath: 'assets/images/filter_image.png',
                  text: 'Change Password',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Image.asset("assets/images/logout_image.png"),
              SizedBox(width: 10,),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogInPage())
                    );

                  },
                  child: Text(
                      "Log Out",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: AppColor.appLogColor,
                        fontWeight: FontWeight.w500
                    ),
                  ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
              "Follow us on:",
            style: GoogleFonts.inter(
                fontSize: 12,
                color: AppColor.appTextColor,
                fontWeight: FontWeight.w500
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageButton(
                imagePath: "assets/images/logo_ vector.png",
                onTap: () {},
              ),
              SizedBox(width: 10,),
              ImageButton(
                imagePath: "assets/images/instagram_logo.png",
                onTap: () {},
              ),
              SizedBox(width: 10,),
              ImageButton(
                imagePath: "assets/images/twitter_logo.png",
                onTap: () {},
              ),
              SizedBox(width: 10,),
              ImageButton(
                imagePath: "assets/images/youtube logo.png",
                onTap: () {},
              ),
            ],
          )
          //Image.asset("assets/images/logo_ vector.png")

        ],
      ),
    );
  }
}



