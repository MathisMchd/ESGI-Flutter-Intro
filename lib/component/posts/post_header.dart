import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intro_flutter/component/circle_image_view.dart';

class PostHeader extends StatelessWidget {
  final Function() onPressed;

  const PostHeader({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleImageView(
                  assetImage: Image.asset("assets/images/profile_1.jpg").image,
                  imageSize: 35,
                  hasColor: true,
                ),
                const SizedBox(width: 8),
                const Text(
                  "Georges Tomson",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
