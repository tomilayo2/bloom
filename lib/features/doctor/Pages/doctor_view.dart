import 'package:bloom/features/Authentication/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../widgets/doctors_card.dart';

class DoctorView extends StatelessWidget {
  const DoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Doctors",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColor.appTextColor
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.notifications_none_outlined, color: AppColor.appAppColor,),

                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: AppColor.appGeneralColor,
                          border: Border.all(color: AppColor.appGreyColor),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, size: 35, color: AppColor.appNewColor,),
                            hintText: "Search doctor",
                            hintStyle: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColor.appTextColor
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.filter_list, size: 25,color: AppColor.appNewColor,),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Upcoming Sessions",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColor.appGenericColor
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                    "You have no sessions",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.appSubTitleColor
                  ),
                )
              ],
            ),
            SizedBox(height: 16,),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return  DoctorsCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}

