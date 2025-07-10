
import 'package:flutter/material.dart';

class CircleImageView extends StatelessWidget {
  final ImageProvider assetImage;
  final double imageSize;
  final bool hasColor;

  const CircleImageView({
    Key? key,
    required this.assetImage,
    required this.imageSize,
    required this.hasColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: imageSize / 2,
      backgroundColor: this.hasColor ? Colors.pinkAccent : Colors.transparent,
      child: CircleAvatar(
        radius: (imageSize / 2) - 2,
        backgroundImage: assetImage,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}