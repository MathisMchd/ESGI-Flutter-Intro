import 'package:flutter/material.dart';
import 'package:intro_flutter/Entity/PostDto.dart';
import 'package:intro_flutter/component/posts/post_resum.dart';

class PostListPage extends StatefulWidget {
  final List<PostDto> postList;
  const PostListPage({super.key,required this.postList});

  @override
  State<PostListPage> createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.postList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: PostResum(post: widget.postList[index])
        );
    },);
  }
}
