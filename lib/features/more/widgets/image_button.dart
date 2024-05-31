import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.imagePath,
    required this.onTap,
  });
  final String imagePath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child:
        Image.asset(imagePath, height: 25,)
    );
  }
}