import 'package:bloom/features/articles/models/article_model.dart';
import 'package:bloom/features/articles/pages/article_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_color.dart';

class ArticlesCard extends StatelessWidget {
  const ArticlesCard({
    super.key, required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(articleModel.imagePath),
                  fit: BoxFit.cover,
                )
            ),
          //  child: Image.asset("assets/images/fruit_image.png")),
        ),
        SizedBox(height: 5,),
        Text(
         articleModel.text,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: AppColor.appTextColor
          ),
        ),
        Text(
          articleModel.subtitle,
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
    );
  }
}
