import 'package:bloom/features/Authentication/widgets/app_button.dart';
import 'package:bloom/features/Authentication/widgets/custom_textfield.dart';
import 'package:bloom/features/Authentication/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../../utils/date_formatter.dart';
import '../widgets/content_otp.dart';
import '../widgets/date_picker.dart';
import 'home_view.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  TextEditingController reminddateController = TextEditingController();

  List<String>items = ["At time of event","15 minutes before", "30 minutes before", "1 hour before","1 day before", "1 week before"];
  String? selectedItem1;
  List<String>elements = ["At time of event","15 minutes before", "30 minutes before", "1 hour before","1 day before", "1 week before"];
  String? selectedItem2;



  @override
  void initState() {
    reminddateController.text = "";
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(child: Text("Add Reminder")),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitle(
                  title: "Date"
              ),
              SizedBox(height: 3,),
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
                      reminddateController.text = formatDate(pickedDate.toString());
                    });
                    print(pickedDate.toString());
                  }
                },

                child: DatePicker(dateController: reminddateController),
              ),
              SizedBox(height: 20,),
              CustomTitle(
                  title: "Title"
              ),
              SizedBox(height: 3,),
              CustomTextField(
                  hintText: "Add Title"
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
                      hintText: "Full details of what you want to be reminded of",
                      hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                          color: AppColor.appGreyColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
              text: "Add Reminder",
            onTap: (){
                showDialog(context: context, builder: (context) => AlertDialog(
                  actions: [
                    AppButton(
                      text: 'Continue',
                      onTap: (){
                       Navigator.pop(context);
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
                          "You have successfully added a reminder for Market Runs (13/05/2024)",
                      textAlign: TextAlign.center,
                      )
                    ],

                  ),
                ));
            },
          )
        ],
      ),
    );
  }
}
