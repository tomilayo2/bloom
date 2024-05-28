
class ArticleModel{
  ArticleModel({
    required this.imagePath,
    required this.text,
    required this.subtitle
});
  final String imagePath;
  final String text;
  final String subtitle;

}

List<ArticleModel> articleList = [
  ArticleModel(
      imagePath: "assets/images/fruit_image.png",
      text:  "Fruits to eat while pregnant",
      subtitle: "Banana and pumpkins are great \nfruits for healthy baby develop...",
  ),
  ArticleModel(
      imagePath: "assets/images/article_image_one.png",
      text:  "The importance of reading boo",
      subtitle: "Learning about better ways to balance your work and baby bu...",
  ),
  ArticleModel(
      imagePath: "assets/images/article_image_two.png",
      text:  "How big is my baby now?",
      subtitle: "During pregnancy, your baby grows from poppy seed to pum...",
  ),
  ArticleModel(
      imagePath: "assets/images/article_image_three.png",
      text:  "Is your baby getting enough",
      subtitle: "This is a common question for new breastfeeding mothers be...",
  ),
  ArticleModel(
      imagePath: "assets/images/article_image_four.png",
      text:  "Balancing work with baby care",
      subtitle: "After delivery, the next struggle is learning how to care for you ...",
  ),
  ArticleModel(
      imagePath: "assets/images/article_image_five.png",
      text:  "Can I exercise when I’m due ",
      subtitle: "As a expectant mom, you get all stressed with the daily growth ...",
  ),
  ArticleModel(
      imagePath: "assets/images/fruit_image.png",
      text:  "Can I exercise when I’m due ",
      subtitle: "As a expectant mom, you get all stressed with the daily growth ...",
  ),
  ArticleModel(
      imagePath: "assets/images/fruit_image.png",
      text:  "Can I exercise when I’m due ",
      subtitle: "As a expectant mom, you get all stressed with the daily growth ...",
  )
];