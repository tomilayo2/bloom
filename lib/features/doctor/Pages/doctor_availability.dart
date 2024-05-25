import 'package:bloom/features/Authentication/widgets/app_button.dart';
import 'package:bloom/features/home/pages/Reminder_page.dart';
import 'package:bloom/features/home/pages/confirm_appointment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../constant/app_color.dart';
import '../widgets/available_time.dart';

class DoctorAvailability extends StatefulWidget {
  const DoctorAvailability({super.key});

  @override
  State<DoctorAvailability> createState() => _DoctorAvailabilityState();
}

class _DoctorAvailabilityState extends State<DoctorAvailability> {

  DateTime today = DateTime.now();
  _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

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
                  "STEP 1 of 2",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: AppColor.appNewColor
                ),
              ),
              Text(
                  "Select from available date and time",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColor.appTextColor
                ),
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
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                  child: Divider()
              ),
              SizedBox(height: 20,),
              AvailableTime(
                title: '2:30 P.M',
                onTap: (){},
              ),
              SizedBox(height: 20,),
              AvailableTime(
                title: '3:20 P.M',
                onTap: (){},
              ),
              SizedBox(height: 20,),
              AvailableTime(
                title: '4:00 P.M',
                onTap: (){},
              ),
              SizedBox(height: 20,),
              AvailableTime(
                title: '5:00 P.M',
                onTap: (){},
              ),
              SizedBox(height: 20,),
              AvailableTime(
                title: '5:30 P.M',
                onTap: (){},
              ),
              SizedBox(height: 20,),
              AvailableTime(
                title: '8:30 P.M',
                onTap: (){},
              ),
              SizedBox(height: 20,),
              AvailableTime(
                title: '11:30 P.M',
                onTap: (){},
              ),
              SizedBox(height: 30,),
              AppButton(
                  text: "Continue",
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmAppointment()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

