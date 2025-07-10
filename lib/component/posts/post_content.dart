import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  final List<ImageProvider> imageList;
  const PostContent({super.key, required this.imageList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: CarouselView(
        itemExtent: double.infinity,
        children: imageList.map((assetImage) => Image(image: assetImage, fit: BoxFit.cover)).toList(),
      ),
    );
  }
}
