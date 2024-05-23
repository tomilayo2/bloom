import 'package:bloom/constant/app_color.dart';
import 'package:bloom/features/articles/pages/articles_view.dart';
import 'package:bloom/features/doctor/Pages/doctor_view.dart';
import 'package:bloom/features/home/pages/home_view.dart';
import 'package:bloom/features/more/pages/more_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    DoctorView(),
    ArticlesView(),
    MoreView(),

  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children:
          listOfPages,
          index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: AppColor.appButtonColor,
        unselectedItemColor: AppColor.appNewColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.inter(
            fontSize: 14,
          fontWeight: FontWeight.w500
      ),
        unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w400
        ),
        type: BottomNavigationBarType.fixed,

        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
          },

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
            label: "Home",
          //  backgroundColor: AppColor.appAppColor
          ), BottomNavigationBarItem(
              icon: Icon(Icons.groups),
            label: "Doctor",
           // backgroundColor: AppColor.appAppColor
          ), BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
            label: "Articles",
           // backgroundColor: AppColor.appAppColor
          ), BottomNavigationBarItem(
              icon: Icon(Icons.more),
            label: "More",
           // backgroundColor: AppColor.appAppColor
          ),
        ],
      ),

    );
  }
}
