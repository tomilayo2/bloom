import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/doctor/Pages/doctor_profile.dart';
import 'package:bloom/features/home/pages/select_interest_page.dart';
import 'package:bloom/features/onboarding_section/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        checkboxTheme: CheckboxThemeData(
          side: MaterialStateBorderSide.resolveWith(
                (states) => BorderSide(
              color: AppColor.appGreyColor, // Change this to your desired border color
              width: 2, // Border width
            ),
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

