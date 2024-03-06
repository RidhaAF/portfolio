import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    const String image = 'assets/images/ridhaaf.png';

    return Image.asset(
      image,
      width: 120,
      height: 120,
    );
  }
}
