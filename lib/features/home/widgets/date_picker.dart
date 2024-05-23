import 'package:flutter/material.dart';

import '../../../constant/app_color.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({
    super.key,
    required this.dateController,
  });

  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateController,
      enabled: false,
      decoration: const InputDecoration(
          suffixIcon: Icon(Icons.calendar_month_outlined),
          hintText: "DD/MM/YYYY",
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColor.appBorderColor
              ),
              borderRadius: BorderRadius.all(Radius.circular(6))
          )
      ),
      readOnly: true,
    );
  }
}
