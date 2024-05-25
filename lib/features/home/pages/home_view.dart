import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/Authentication/widgets/app_button.dart';
import 'package:bloom/features/home/pages/Reminder_page.dart';
import 'package:bloom/features/home/widgets/content_otp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/date_formatter.dart';
import '../widgets/date_picker.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DateTime today = DateTime.now();
  _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }
  TextEditingController changedateController = TextEditingController();

  @override
  void initState() {
    changedateController.text = "";
    super.initState();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView(
          //padding: EdgeInsets.all(16.0),
          children:[ Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Image.asset("assets/images/avatar_image.png"),
              ),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Hi Anna,",
                    style: GoogleFonts.inter(
                        fontSize: 10,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                      "GoodMorning",
                    style: GoogleFonts.inter(
                        fontSize: 10,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.notifications_none_outlined, color: AppColor.appAppColor,),
                      onPressed: (){},
                    )
                ),
              )
            ],
          ),
            Container(
              decoration: const BoxDecoration(
                color: AppColor.appConColor,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFEADAFF),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  )
                ]
              ),
             padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Honey and ginger Tea recipe",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: AppColor.appTextColor,
                              fontWeight: FontWeight.w600
                          ),

                        ),
                        Text(
                            "There is no better option to start your day with than a tablespoon of honey ...",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppColor.appTextColor,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        // TextButton(
                        //     onPressed: (){},
                        //     child: Text("learn more")
                        // )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle
                    ),
                      child: Image.asset("assets/images/ellipse_image.png"))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "1st Trimester:",
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                      "7Weeks, 10Days",
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                 IconButton(
                     onPressed: (){},
                     icon: Icon(Icons.info_outline_rounded, color: AppColor.appAppColor, size: 15,)
                 )
                 // IconButton(onPressed: onPressed, icon: icon)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0,),
              child: Text(
                  "Countdown to Baby Bloomer",
                style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColor.appTextColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16.0,top: 8),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xFFEADAFF),
                              borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: TextButton(
                              onPressed: (){},
                              child: Text(
                                "32",
                                style: GoogleFonts.inter(
                                    fontSize: 25,
                                    color: AppColor.appTextColor,
                                    fontWeight: FontWeight.w500
                                ),

                              )
                          ),
                        ),
                        Text(
                          "WEEKS",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              color: AppColor.appTextColor,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 1,),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xFFEADAFF),
                              borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: TextButton(
                              onPressed: (){},
                              child: Text(
                                "7",
                                style: GoogleFonts.inter(
                                    fontSize: 25,
                                    color: AppColor.appTextColor,
                                    fontWeight: FontWeight.w500
                                ),

                              )
                          ),
                        ),
                        Text(
                          "DAYS",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              color: AppColor.appTextColor,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            border: Border.all(color: AppColor.appBorderColor, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: AppColor.appPupColor,
                                    border: Border.all(color: AppColor.appBorderColor,width: 0.5),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0))
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                    child: Text(
                                        "Dec",
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          color: AppColor.appGeneralColor,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                    "18",
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                       // SizedBox(height: 10,),
                        TextButton(
                          style: ButtonStyle(
                          ),
                            onPressed: (){
                            showDialog(
                                context: context, 
                                builder: (context) => AlertDialog(
                                  actions: [
                                    SizedBox(height: 20,),
                                    AppButton(
                                        text: "Change Date",
                                      onTap: (){
                                        Navigator.pop(context);
                                          showDialog(
                                              context: context, builder: (context) => AlertDialog(
                                            actions: [
                                              AppButton(
                                                text: 'Continue',
                                                onTap: (){
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ],
                                            title: Image.asset("assets/images/dialogue_image.png"),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ContentOtp(text: 'Successful',),
                                                Text(
                                                  "You have successfully changed your Expected Delivery change (EDD)",
                                                  textAlign: TextAlign.center,
                                                )
                                              ],

                                            ),
                                          ));
                                      },
                                    )
                                  ],
                                  title: Text(
                                    "Expected Delivery Date Change",
                                    style: GoogleFonts.inter(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  content: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                          "Expected Due Date",
                                        style: GoogleFonts.inter(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      GestureDetector(
                                        onTap: ()async{
                                          DateTime? pickedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2025),
                                          );
                                          if(pickedDate != null){
                                            setState(() {
                                              changedateController.text = formatDate(pickedDate.toString());
                                            });
                                            print(pickedDate.toString());
                                          }
                                        },

                                        child: DatePicker(dateController: changedateController),
                                      ),
                                    ],
                                  ),
                                )
                            );
                            },
                            child: Text(
                              "Change due date",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: AppColor.appAppColor,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.appAppColor,
                                decorationThickness: 1.5,

                              ),
                            )
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              child: TableCalendar(
                locale: "en_Us",
                rowHeight: 43,
                headerStyle: HeaderStyle(formatButtonVisible: false),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day,today),
                focusedDay: today,
                firstDay: DateTime.utc(2000, 01, 01),
                lastDay: DateTime.utc(2030, 01,01),
                onDaySelected: _onDaySelected,
                
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "No available reminder(s)",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w400
                    )
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8, right: 8 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => ReminderPage()));
                            },
                            icon: Icon(Icons.add_circle_outline, color: AppColor.appAppColor,),
                        ),
                        Text(
                          "Add reminder",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: AppColor.appAppColor,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ],

            )
          ]
        ),
      ),
    );
  }
}
