
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
      imagePath: "assets/images/blog_meal.png",
      text:  "Conquering Postpartum Stress: New",
      subtitle: "Drinking a cup of milk daily helps the baby in the womb build strong bones, and fight against calcium deficiency. The requirement for the amount to take ...",
  ),
  ArticleModel(
      imagePath: "assets/images/blog_exercise.png",
      text:  "Why is my baby skin with rashes?",
      subtitle: "Newborn skin is oh-so-soft, but it can also be prone to rashes. These can be alarming for new parents, but rest assured, most baby rashes are harmless and cla...",
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