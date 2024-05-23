import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key,
    required this.imagePath,
    this.onTap});

  final String imagePath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Color(0xFF98A2B3)
              )
          ),
          child: Image.asset(imagePath)
      ),
    );
  }
}


