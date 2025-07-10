import 'package:flutter/material.dart';
import 'package:intro_flutter/Entity/PostDto.dart';
import 'package:intro_flutter/component/home_feed.dart';
import 'package:intro_flutter/component/stories.dart';

class HomePage extends StatefulWidget {
  final List<PostDto> postList;
  const HomePage({super.key, required this.postList });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stories(),
        Expanded(child: HomeFeed(feed: this.widget.postList))
      ],
    );
  }
}
