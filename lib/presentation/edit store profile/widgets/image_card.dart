import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  const ImageWidget({
    super.key,
    required this.size, required this.imagePath,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width *.22,
      height: size.width *.22,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover)
      ),

      child: Stack(
        children: [
          Positioned(
            right: 10, 
            top: 10,
            child: Icon(Icons.clear,color: kWhiteColor,))
        ],

      ),
    );
  }
}

