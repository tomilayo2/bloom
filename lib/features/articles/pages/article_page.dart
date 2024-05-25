import 'package:bloom/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed:(){},
                  icon: Icon(Icons.share,color: AppColor.appAppColor,)
              ),  IconButton(
                  onPressed:(){},
                  icon: Icon(Icons.favorite_border,color: AppColor.appAppColor,)
              ),
            ],
          ),
          SizedBox(
            width: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/article_image.png",
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                        // height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: AppColor.appLilacColor,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Text(
                              "Mothers care",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColor.appTextColor
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(4),
                          // height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: AppColor.appLilacColor,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Text(
                            "Music",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColor.appTextColor
                            ),
                          ),
                        ),

                      ],
                    ),
                    Text(
                        "5 min read",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: AppColor.appNewColor
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                    "Fruits to eat while pregnant",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColor.appTextColor
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetur. Cras nunc pellentesque sollicitudin odio. Consequat purus maecenas dictumst in et. Nisl odio massa scelerisque turpis felis nunc. At sed et aliquam pharetra consectetur pellentesque urna. Praesent tincidunt sit nam ultrices. Sem nibh sodales amet in sem vulputate at senectus pellentesque. Est blandit facilisi lacus gravida pretium felis faucibus commodo. Eu ullamcorper nulla orci vulputate nibh. Scelerisque quisque quisque consectetur quam natoque mattis metus. Tristique mattis massa diam lorem lectus id interdum. Fringilla vel donec maecenas elit scelerisque nulla suspendisse placerat volutpat. Dictumst fermentum tellus gravida morbi nisl iaculis enim gravida in. Risus lobortis fringilla a tincidunt a imperdiet pellentesque. Congue pretium blandit ut nam ornare facilisi. Ipsum maecenas dictumst sit amet ornare erat enim. Viverra tincidunt molestie turpis massa sed at. Enim quisque facilisis auctor at turpis bibendum sit in. Ornare consectetur tempor non faucibus fringilla. Aliquet at dolor purus posuere nunc. Sem pellentesque in dis ante. Ultrices dignissim ipsum pharetra sit. Augue urna ornare sit ipsum blandit tempus blandit neque. Vitae urna velit urna nisl id ut augue cras arcu. Odio feugiat nec malesuada aliquet. Vestibulum lacus velit hac dui faucibus egestas proin elementum etiam. Morbi pharetra ullamcorper eget nunc consectetur faucibus. Adipiscing vitae tellus pulvinar nec luctus suspendisse. Pretium gravida non aliquet in. Turpis pellentesque nunc libero sed. Tellus commodo lacus justo porta lacinia cursus fermentum sollicitudin. Amet ut ultricies consequat amet sit amet commodo eros. Faucibus condimentum nec tellus sit duis cras quis velit habitant. Amet massa et quam diam porttitor nulla tortor. Imperdiet auctor nunc pellentesque ornare sit sed. Mattis auctor consequat consequat sollicitudin. Interdum velit vulputate cras lectus. Ut nullam diam netus auctor arcu nibh sed. Eu adipiscing nisi suspendisse cras duis. Diam netus duis morbi nibh dictumst. Nulla magna consequat dis adipiscing sit fringilla consectetur enim.",
                    style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColor.appTitleColor
                 ),
                ),
                SizedBox(height: 10,),
                Text(
                    "Source",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColor.appNewColor
                  ),
                ),
                RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "American Academy of Family Physicians:",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColor.appNewColor
                          ),
                        ),
                        TextSpan(
                          text: " “Eating during Pregnancy”",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColor.appAppColor
                          ),
                        ),
                        TextSpan(
                          text: "\nMercy Health system: ",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColor.appNewColor
                          ),
                        ),
                        TextSpan(
                          text: "“How your baby grows during pregnancy”",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColor.appAppColor
                          ),
                        ),
                      ]
                    )
                ),
                SizedBox(height: 10,),
                Text(
                    "Last Updated: Apr 2024",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColor.appNewColor
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
