import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    this.keyboardType,
    this.onChanged,
    this.obscureText = false,
    this.validator,
    this.controller,
    this.errorText,
  });

  final Widget? suffixIcon;
  final String hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.appBorderColor),
          borderRadius: BorderRadius.circular(8.0)
      ),
     // margin: EdgeInsets.symmetric(horizontal: 16.0),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          obscureText: obscureText,
          obscuringCharacter: '*',
          onChanged: onChanged,
          keyboardType: keyboardType,
          validator: validator,
          decoration: InputDecoration(
              errorText: errorText,
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: GoogleFonts.inter(
                  fontSize: 12,
                  color: AppColor.appGreyColor,
                  fontWeight: FontWeight.w400
              ),
              border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
