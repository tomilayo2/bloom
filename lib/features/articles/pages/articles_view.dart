import 'package:bloom/features/articles/models/article_model.dart';
import 'package:bloom/services/bloom_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../../constant/app_color.dart';
import '../widgets/articles_card.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({super.key});

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView> {

  int _buttonIndex = 0;
  final _allCommunityWidgets = [
  // Article (),
  Container(),
  //Video Widget(),
  Container(),
  // Saved Widget(),
  Container()
];

  final bloomService = BloomService();

  Future<void> getBlogPosts() async {
    final result = await bloomService.getBlogPosts();
    if(result.items.isNotEmpty){
      print('We got ${result.items.length} items');
    }else{
      print('No items');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Articles",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: AppColor.appTextColor
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications_none_outlined, color: AppColor.appAppColor,),

                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: AppColor.appGeneralColor,
                            border: Border.all(color: AppColor.appGreyColor),
                            borderRadius: BorderRadius.all(Radius.circular(8.0))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, size: 35, color: AppColor.appNewColor,),
                            hintText: "Search by keyboard, topic",
                            hintStyle: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColor.appTextColor
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.history, size: 25,color: AppColor.appNewColor,),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: _buttonIndex == 0
                            ?AppColor.appPinkColor
                            : AppColor.appGeneralColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Articles",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 0
                                ?AppColor.appAppColor
                                :AppColor.appSubTitleColor
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: _buttonIndex == 1
                            ?AppColor.appPinkColor
                            : AppColor.appGeneralColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Videos",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 1
                                ?AppColor.appAppColor
                                :AppColor.appSubTitleColor
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: _buttonIndex == 2
                            ?AppColor.appPinkColor
                            :AppColor.appGeneralColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Saved",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 2
                                ?AppColor.appAppColor
                                :AppColor.appSubTitleColor
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: 30,),
            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.9
            ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: articleList.length,
                itemBuilder: (context, index) {
                  return  ArticlesCard(
                    articleModel: articleList[index]
                  );
                }
            ),
          ],
        ),
      )
    );
  }
}

