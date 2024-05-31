import 'package:bloom/features/Authentication/widgets/app_button.dart';
import 'package:bloom/features/home/pages/Reminder_page.dart';
import 'package:bloom/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../Authentication/widgets/custom_title.dart';
import '../../home/widgets/content_otp.dart';

class ConfirmAppointment extends StatefulWidget {
  const ConfirmAppointment({super.key});

  @override
  State<ConfirmAppointment> createState() => _ConfirmAppointmentState();
}

class _ConfirmAppointmentState extends State<ConfirmAppointment> {

  List<String>items = ["At time of event","15 minutes before", "30 minutes before", "1 hour before","1 day before", "1 week before"];
  String? selectedItem1;
  List<String>elements = ["At time of event","15 minutes before", "30 minutes before", "1 hour before","1 day before", "1 week before"];
  String? selectedItem2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "STEP 2 of 2",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: AppColor.appNewColor
                ),
              ),
              SizedBox(height: 12,),
              Text(
                "Confirm Appointment",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColor.appTextColor
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColor.appGeneralColor,
                    child: Image.asset("assets/images/circular_invatar.png",),
                  ),
                  Text(
                      "Oluwatomi Ogundijo (Cardiologist)",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.appTextColor
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      "Session Duration:",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColor.appNewColor
                    ),
                  ),
                  SizedBox(width: 3,),
                  Text(
                      "30 minutes",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.appTextColor
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/icons/calendar_icon.png"),
                  SizedBox(width: 10,),
                  Text(
                      "Wednesday, June 12, 2024",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.appTextColor
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        "Change date",
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          color: AppColor.appAppColor,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.appAppColor,
                          decorationThickness: 1.5,
                        ),
                      ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/icons/clock_icon.png"),
                  SizedBox(width: 10,),
                  Text(
                      "2:30 P.M",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.appTextColor
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              CustomTitle(
                  title: "Notes"
              ),
              SizedBox(height: 3,),
              Container(
                height: 130,
                // width: ,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.appBorderColor),
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Anything you would like to let the doctor know",
                      hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                          color: AppColor.appGreyColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                //   margin: EdgeInsets.only(bottom: 150, left: 20, right: 20),
                child: SizedBox(
                    height: 58,
                    child: DropdownButtonFormField<String>(
                        hint: Row(
                          children: [
                            Text(
                              "Reminder",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: AppColor.appTextColor,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(width: 150,),
                            Text(
                              "Select Option",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: AppColor.appGreyColor,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),

                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.appBorderColor),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),// Change border color here when focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.appBorderColor),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),// Change border color here when focused
                          ),
                        ),
                        value: selectedItem1,
                        items: [
                          for (String item in items)
                            DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                  ),
                                )
                            ),
                          if (!items.contains(selectedItem1 ?? ""))
                            DropdownMenuItem<String>(
                                value: selectedItem1 ?? "",
                                child: Text(
                                  selectedItem1 ?? "",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                  ),

                                )
                            )

                        ],
                        onChanged: (item){
                          setState(() {
                            selectedItem1 = item;
                          });
                        }
                    )
                ),
              ),
              Container(
                //  margin: EdgeInsets.only(bottom: 150, left: 20, right: 20),
                child: SizedBox(
                    height: 58,
                    child: DropdownButtonFormField<String>(
                        hint: Row(
                          children: [
                            Text(
                              "Reminder",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: AppColor.appTextColor,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(width: 150,),
                            Text(
                              "Select Option",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: AppColor.appGreyColor,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),

                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.appBorderColor),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),// Change border color here when focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.appBorderColor),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),// Change border color here when focused
                          ),
                        ),
                        value: selectedItem2,
                        items: [
                          for (String item in elements)
                            DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                  ),
                                )
                            ),
                          if (!elements.contains(selectedItem2 ?? ""))
                            DropdownMenuItem<String>(
                                value: selectedItem2 ?? "",
                                child: Text(
                                  selectedItem2 ?? "",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                  ),

                                )
                            )

                        ],
                        onChanged: (item){
                          setState(() {
                            selectedItem2 = item;
                          });
                        }
                    )
                ),
              ),
              SizedBox(height: 40,),
              AppButton(
                onTap: (){
                  showDialog(context: context, builder: (context) => AlertDialog(
                    actions: [
                      AppButton(
                        text: 'Return Home',
                        onTap: (){
                          Navigator.pop(context);
                         // Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
                    ],
                    title: Image.asset("assets/images/dialogue_image.png"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ContentOtp(text: 'Booking Successful',),
                        // Text(
                        //   "A calendar invitation has been sent to your phone number",
                        //   textAlign: TextAlign.center,
                        // )
                      ],

                    ),
                  ));
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ReminderPage()));
                },
                  text: "Book Appointment",
              )
            ],
          )
        ],
      ),
    );
  }
}
