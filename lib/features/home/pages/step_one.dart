

import 'package:bloom/features/Authentication/pages/signup_page.dart';
import 'package:bloom/features/home/pages/select_interest_page.dart';
import 'package:bloom/features/home/pages/step_two.dart';
import 'package:bloom/utils/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../Authentication/widgets/app_button.dart';
import '../widgets/custom_nickname.dart';
import '../widgets/date_picker.dart';


class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  List<String>items = ["1","2","3","4","5","6","7"];
  String? selectedItem;
  // bool isSingleVisible = false;
  // bool isTwinsVisible = false;


  TextEditingController birthdateController = TextEditingController();
  TextEditingController duedateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    birthdateController.text = "";
    duedateController.text = "";
    //selectedItem = items.first;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Let’s Get to Know our Bloomer",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: AppColor.appTextColor,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 25,),
              Text(
                  "STEP 1 of 2",
                style: GoogleFonts.inter(
                    fontSize: 10,
                    color: AppColor.appNewColor,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 15,),
              Text(
                  "Answer a few quick questions to help us customize your experience. We recommend that you add a valid information.",
                style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppColor.appTextColor,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 15,),
              Text(
                "Your Birthdate",
                style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColor.appTextColor,
                    fontWeight: FontWeight.w500
                ),
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
                      birthdateController.text = formatDate(pickedDate.toString());
                    });
                    print(pickedDate.toString());
                  }
                },

                child: DatePicker(dateController: birthdateController),
              ),
              SizedBox(height: 20,),
              Text(
                "Expected Due Date",
                style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColor.appTextColor,
                    fontWeight: FontWeight.w500
                ),
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
                      duedateController.text = formatDate(pickedDate.toString());
                    });
                    print(pickedDate.toString());
                  }
                },

                child: DatePicker(dateController: duedateController),
              ),
              const SizedBox(height: 20,),
              Text(
                "How many child(ren) are you expecting?",
                style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColor.appTextColor,
                    fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 3,),
              SizedBox(
                height: 58,
                child: DropdownButtonFormField<String>(
                  hint: Text(
                    "Select Option",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: AppColor.appGreyColor,
                      fontWeight: FontWeight.w400
                  ),
                  ),

                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.appBorderColor),
                      borderRadius: BorderRadius.all(Radius.circular(8)),// Change border color here when focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.appBorderColor),
                      borderRadius: BorderRadius.all(Radius.circular(8)),// Change border color here when focused
                    ),
                  ),
                  value: selectedItem,
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
                    if (!items.contains(selectedItem ?? ""))
                      DropdownMenuItem<String>(
                        value: selectedItem ?? "",
                          child: Text(
                            selectedItem ?? "",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                            ),

                          )
                      )

                  ],
                  onChanged: (item){
                    setState(() {
                      selectedItem = item;
                      // isSingleVisible = item == "No";
                      // isTwinsVisible= item == "Yes";
                    });
                  }
                )
              ),
             //  SizedBox(height: 20,),
             //  Visibility(
             //    visible: isSingleVisible,
             //    child: Column(
             //      crossAxisAlignment: CrossAxisAlignment.start,
             //      children: [
             //        Text(
             //          "Baby Nickname (Optional)",
             //          style: GoogleFonts.inter(
             //              fontSize: 12,
             //              color: AppColor.appTextColor,
             //              fontWeight: FontWeight.w500
             //          ),
             //        ),
             //        SizedBox(height: 3,),
             //        CustomNickname(hintText: 'Enter nickname',),
             //      ],
             //    ),
             //  ),
             //  SizedBox(height: 20,),
             // Visibility(
             //   visible: isTwinsVisible,
             //   child: Column(
             //     crossAxisAlignment: CrossAxisAlignment.start,
             //     children: [
             //       Text(
             //         "Baby 1 Nickname (Optional)",
             //         style: GoogleFonts.inter(
             //             fontSize: 12,
             //             color: AppColor.appTextColor,
             //             fontWeight: FontWeight.w500
             //         ),
             //       ),
             //       SizedBox(height: 3,),
             //       CustomNickname(hintText: 'Enter nickname',),
             //       SizedBox(height: 20,),
             //       Text(
             //         "Baby 2 Nickname (Optional)",
             //         style: GoogleFonts.inter(
             //             fontSize: 12,
             //             color: AppColor.appTextColor,
             //             fontWeight: FontWeight.w500
             //         ),
             //       ),
             //       SizedBox(height: 3,),
             //       CustomNickname(hintText: 'Enter nickname',),
             //     ],
             //   ),
             // ),
              SizedBox(height: 100,),
              AppButton(
                text: 'Continue',
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectInterestPage()
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

