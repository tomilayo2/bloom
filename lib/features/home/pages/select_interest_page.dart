
import 'package:bloom/features/Authentication/widgets/custom_title.dart';
import 'package:bloom/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../Authentication/widgets/app_button.dart';

class SelectInterestPage extends StatefulWidget {
  const SelectInterestPage({super.key});

  @override
  State<SelectInterestPage> createState() => _SelectInterestPageState();
}

class _SelectInterestPageState extends State<SelectInterestPage> {

  List<String> selectedOptions = [];

  void toggleOption(String option) {
    setState(() {
      if (selectedOptions.contains(option)) {
        selectedOptions.remove(option);
      } else {
        selectedOptions.add(option);
      }
    });
  }

  List<String>items = ["Facebook","Whatsapp", "Instagram", "Tweeter","Friends", "Family"];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    List<String> bloomerOptions = ['Nutrition', 'Breastfeeding', 'Baby bumps',
      'Labor', 'Trimester', 'Exercise', 'Fatigue', 'Morning Sickness',
      'Spitting','Vomiting','Caesarean section (CS)','Mental health','Polio',
      'Pain management', 'Natural birth', 'Others'];

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 24.0),
                      child: Column(
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

                        ],
                      ),
                    ),



                    _buildCategoryOptions(
                        context, bloomerOptions, categoryName: 'Sports', onTap: (){}
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: CustomTitle(
                          title: "How did you hear about us?"
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Container(
                      margin: EdgeInsets.only(bottom: 150, left: 20, right: 20),
                      child: SizedBox(
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
                                });
                              }
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: AppButton(
                        text: 'Continue',
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()
                              ));
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryOptions(
      BuildContext context,
      List<String> sportOptions,
      {String categoryName = '',
        void Function()? onTap
      }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            spacing: 10.0,
            children: sportOptions.map((option) => InputChip(
              label: Text(option),
              selected: selectedOptions.contains(option),
              showCheckmark: false,
              selectedColor: AppColor.appAppColor,
              backgroundColor: Colors.transparent,
              labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: selectedOptions.contains(option) ? Colors.white : Colors.black,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
                side: BorderSide(color: AppColor.appTitleColor)

              ),
              //side: BorderSide.none,
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
              onSelected: (isSelected) {
                toggleOption(option);
              },
            )
            ).toList(),
          )
        ],
      ),
    );
  }


}