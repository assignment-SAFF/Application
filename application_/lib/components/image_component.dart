import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/SAFF_logo.png",
      height: 70,
      width: 70,
    );
  }
}
