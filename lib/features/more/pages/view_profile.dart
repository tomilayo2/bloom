import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';
import '../../Authentication/widgets/custom_textfield.dart';
import '../../Authentication/widgets/custom_title.dart';
import '../../doctor/Pages/doctor_profile.dart';
import '../widgets/profile_textfield.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
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
                  "Profile",
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
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => ViewProfile()));
                    },
                    child: Text(
                      "Edit Profile",
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: AppColor.appAppColor,
                          fontWeight: FontWeight.w400
                      ),
                    )
                ),
              ),
            ],
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  //backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                  backgroundColor: Color(0xFFFFECE5),
                  child: Text(
                      "AC",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        color: AppColor.appTextColor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.appAppColor
                        ),
                        child: IconButton(
                          alignment: Alignment.center,
                          icon: Icon(Icons.camera_alt_outlined, size: 12,),
                          onPressed: (){},
                          //iconSize: 16,
                          color: Colors.white,
                        )
                    )
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bloomer Information")
            ],
          ),
          SizedBox(height: 10,),
          CustomTitle(
              title: "Full Name"
          ),
          SizedBox(height: 3,),
          ProfileTextField(
          hintText: 'Ann Cliff',
            keyboardText: TextInputType.name,
      ),
          SizedBox(height: 10,),
          CustomTitle(
              title: "Date of Birth"
          ),
          SizedBox(height: 3,),
          ProfileTextField(
          hintText: '01/04/1998',
            keyboardText: TextInputType.datetime,
      ),
          SizedBox(height: 10,),
          CustomTitle(
              title: "Expected Due Date"
          ),
          SizedBox(height: 3,),
          ProfileTextField(
          hintText: '17/12/2024',
            keyboardText: TextInputType.datetime,
      ), SizedBox(height: 10,),
          CustomTitle(
              title: "How many child(ren) are you expecting"
          ),
          SizedBox(height: 3,),
          ProfileTextField(
          hintText: '1',
            keyboardText: TextInputType.number,
      ),
      Row(
          children: [
            Text("Medical History"),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.info_outline_rounded,
                  color: AppColor.appAppColor,
                  size: 12,
                )
            ),
          ],
        ),

          SizedBox(height: 10,),
          CustomTitle(
              title: "Allergies"
          ),
          SizedBox(height: 3,),
          ProfileTextField(
          hintText: 'N/A',
            //keyboardText: TextInputType.datetime,
      ), SizedBox(height: 10,),
          CustomTitle(
              title: "Miscarriage"
          ),
          SizedBox(height: 3,),
          ProfileTextField(
          hintText: 'N/A',
            keyboardText: TextInputType.datetime,
          ),
          SizedBox(height: 20,),
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  color: AppColor.appButtonColor,
                  borderRadius: BorderRadius.all(Radius.circular(7))
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Update Profile",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColor.appTextColor
                  ),
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorProfile()));
            },
          )
        ],
      ),
    );
  }
}

