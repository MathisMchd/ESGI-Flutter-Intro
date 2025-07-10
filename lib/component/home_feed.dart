import 'package:flutter/material.dart';
import 'package:intro_flutter/Entity/PostDto.dart';
import 'package:intro_flutter/component/posts/Post.dart' as PostComponent;

class HomeFeed extends StatelessWidget {
  final List<PostDto> feed;

  const HomeFeed({super.key, required this.feed});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: feed.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: PostComponent.Post(post: feed[index]),
          );
        },
    );
  }
}
