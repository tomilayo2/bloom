import 'package:bloom/features/Authentication/widgets/app_button.dart';
import 'package:bloom/features/doctor/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../../constant/app_color.dart';
import '../widgets/doctors_card.dart';

class DoctorView extends StatefulWidget {
  const DoctorView({super.key});

  @override
  State<DoctorView> createState() => _DoctorViewState();
}

class _DoctorViewState extends State<DoctorView> {

  int _buttonIndex = 0;
  final _allCommunityWidgets = [
    // All (),
    Container(),
    //Gynecologist Widget(),
    Container(),
    // Paeditrician Widget(),
    Container(),
    //Mental Health Widget(),
    Container(),
  ];
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
                ListView(

                  children: [
                 // DoctorsCard(doctorModel: doctorModel)
                  ],
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
            // SizedBox(height: 30),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: List.generate(4, (index) {
            //       return InkWell(
            //         onTap: () {
            //           setState(() {
            //             _buttonIndex = index;
            //           });
            //         },
            //         child: Container(
            //           margin: EdgeInsets.symmetric(horizontal: 5),
            //           padding:
            //           EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            //           decoration: BoxDecoration(
            //             shape: BoxShape.rectangle,
            //             color: _buttonIndex == index
            //                 ? AppColor.appPinkColor
            //                 : AppColor.appGeneralColor,
            //             borderRadius: BorderRadius.circular(4),
            //           ),
            //           child: Text(
            //             ["All", "Gynecologist", "Paeditrician", "Mental Health"][index],
            //             style: GoogleFonts.inter(
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500,
            //                 color: _buttonIndex == index
            //                     ? AppColor.appAppColor
            //                     : AppColor.appSubTitleColor),
            //           ),
            //         ),
            //       );
            //     }),
            //   ),
            // ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: _buttonIndex == 0
                            ?AppColor.appPinkColor
                            : AppColor.appGeneralColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "All",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 0
                                ?AppColor.appAppColor
                                :AppColor.appSubTitleColor
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: _buttonIndex == 1
                            ?AppColor.appPinkColor
                            : AppColor.appGeneralColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Gynecologist",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 1
                                ?AppColor.appAppColor
                                :AppColor.appSubTitleColor
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: _buttonIndex == 2
                            ?AppColor.appPinkColor
                            :AppColor.appGeneralColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Paeditrician ",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 2
                                ?AppColor.appAppColor
                                :AppColor.appSubTitleColor
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 3;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: _buttonIndex == 3
                            ?AppColor.appPinkColor
                            : AppColor.appGeneralColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Mental Health",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 3
                                ?AppColor.appAppColor
                                :AppColor.appSubTitleColor
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
               // mainAxisSpacing: 20,
                childAspectRatio: 0.7,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: doctorList.length,
              itemBuilder: (context, index) {
                return  DoctorsCard(
                  doctorModel: doctorList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

