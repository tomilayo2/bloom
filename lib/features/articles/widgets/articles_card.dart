import 'package:bloom/features/articles/pages/article_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class ArticlesCard extends StatelessWidget {
  const ArticlesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/fruit_image.png"),
          SizedBox(height: 5,),
          Text(
            "Fruits to eat while pregnant",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColor.appTextColor
            ),
          ),
          Text(
            "Banana and pumpkins are great \nfruits for healthy baby develop...",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: AppColor.appSubTitleColor
            ),
          ),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ArticlePage()));
            },
            child: Text(
              "Learn more",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColor.appAppColor
              ),
            ),
          )
        ],
      ),
    );
  }
}
