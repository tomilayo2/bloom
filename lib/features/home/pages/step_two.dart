import 'package:bloom/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../Authentication/widgets/app_button.dart';

class StepTwo extends StatefulWidget {
  const StepTwo({super.key});

  @override
  State<StepTwo> createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  List<String> selectedChoices = [];

  List<String> choices = ['Choice 1', 'Choice 2', 'Choice 3', 'Choice 4', 'Choice 5','Choice 6'];
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
                "STEP 2 of 2",
                style: GoogleFonts.inter(
                    fontSize: 10,
                    color: AppColor.appNewColor,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 15,),
              Text(
                "What topics would you like to learn about?",
                style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppColor.appTextColor,
                    fontWeight: FontWeight.w400
                ),
              ),
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle
        ),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: List<Widget>.generate(choices.length, (int index) {
            return ChoiceChip(
              label: Text(choices[index]),
              selected: selectedChoices.contains(choices[index]),
              onSelected: (bool selected) {
                setState(() {
                  if (selected) {
                    selectedChoices.add(choices[index]);
                  } else {
                    selectedChoices.remove(choices[index]);
                  }
                });
              },
            );
          }),
        ),
      ),
              // SizedBox(height: 200,),
              // AppButton(
              //   text: 'Continue',
              //   onTap: (){
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => HomePage()
              //         ));
              //   },
              // ),
            ]
          )
        ],
      ),
    );
  }
}
