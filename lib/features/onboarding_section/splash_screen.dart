import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/onboarding_section/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingPage()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appSplashColor,
      appBar: AppBar(
        backgroundColor: AppColor.appSplashColor,
      ),
      body: Center(
        child: Image.asset("assets/images/splash_image.png"),
      ),
    );
  }
}
