import 'package:flutter/material.dart';
import 'package:intro_flutter/component/circle_image_view.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  static const double gapSpaceBetweenImage = 10;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: gapSpaceBetweenImage),
          itemCount: 7,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(gapSpaceBetweenImage),
              child: CircleImageView(
                assetImage: Image.asset("assets/images/profile.jpg").image,
                imageSize: 80.0,
                hasColor: true,
              ),
            );
          },
        ),
    );
  }
}
