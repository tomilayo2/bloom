import 'package:bloom/features/doctor/Pages/doctor_profile.dart';
import 'package:bloom/features/doctor/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class DoctorsCard extends StatelessWidget {
  const DoctorsCard({
    super.key,
    required this.doctorModel,
  });
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(doctorModel.imagePath),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Visibility(
              visible: doctorModel.isTopRated,
              child: Positioned(
                top: 8,
                left: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.appOffColor,
                      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                      border: Border.all(color: AppColor.appGreyColor)
                  ),
                  child: Text(
                    "Top rated",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: AppColor.appGenericColor
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: doctorModel.isFavorite,
              child: Positioned(
                top: 8,
                right: 12,
                child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: AppColor.appOffColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColor.appGreyColor)
                    ),
                    child: Image.asset("assets/images/love_image.png",color: AppColor.appAppColor,)
                ),
              ),
            )
          ],
        ),
        Text(
          doctorModel.name,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColor.appTextColor
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          "${doctorModel.specialization}, ${doctorModel.location}",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColor.appTextColor
          ),
        ),
        const SizedBox(height: 4,),
        Row(
          children: [
            Text(
              "${doctorModel.rating} ⭐",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: AppColor.appTextColor
              ),
            ),
            const SizedBox(width: 4,),
            Text(
              "(${doctorModel.numberOfSessions} sessions)",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: AppColor.appTextColor
              ),
            ),
          ],
        ),
        const SizedBox(height: 16,),
        GestureDetector(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
                color: AppColor.appButtonColor,
                borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Check Availability",
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
    );
  }
}
