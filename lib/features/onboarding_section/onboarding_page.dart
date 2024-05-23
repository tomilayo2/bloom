import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/Authentication/pages/signup_page.dart';
import 'package:bloom/features/onboarding_section/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
   pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: _currentPage > 0,
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index){
              setState((){
                _currentPage = index;
                print('Current page: $_currentPage');

              });
            },
            children:  [
              OnboardingScreen(
                title: 'Your Pregnancy Companion',
                subtitle: 'We care about your well-being, and ready to blossom with you through your motherhood journey.',
                image: 'assets/images/first_image.png',
              ),
              OnboardingScreen(
                title: 'Virtual Appointment',
                subtitle: 'Save yourself the stress of the long queues at clinics. From the comfort of your home, book that appointment and discuss with the medical practitioner.',
                image: 'assets/images/second_image.png',
              ),
              OnboardingScreen(
                title: 'Get The Support You Need',
                subtitle: 'With our expert guides on how to care for yourself and new born, you can be assured of a smooth and safe delivery',
                image: 'assets/images/third_image.png',
              ),
              OnboardingScreen(
                title: 'Stay Organised Alway',
                subtitle: 'Keeping up as a wife, mom and business owner can be challenging. Never miss your checkups, medications and prenatal care with our personalized reminders.',
                image: 'assets/images/last_image.png',
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.5),
            child: SmoothPageIndicator(
              controller: pageController,
              count: 4,
              effect: ColorTransitionEffect(
                activeDotColor: AppColor.appButtonColor,
                dotColor: AppColor.appDotColor,
                dotHeight: 8,
                dotWidth: 8,
                //expansionFactor: 3,
                spacing: 8,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                //alignment: Alignment.center,
                //width: 400,
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.appButtonColor,
                        foregroundColor: AppColor.appTitleColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Let's Bloom",
                          style: GoogleFonts.inter(
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                ),
              ),
          ),
        ],
      )
    );
  }
}

