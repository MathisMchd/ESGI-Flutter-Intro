import 'package:flutter/material.dart';
import 'package:intro_flutter/Entity/PostDto.dart';
import 'package:intro_flutter/component/posts/post_content.dart';
import 'package:intro_flutter/component/posts/post_footer.dart';
import 'package:intro_flutter/component/posts/post_header.dart';

class Post extends StatelessWidget {
  final PostDto post;
  const Post({super.key, required this.post});



  @override
  Widget build(BuildContext context) {
    void onHeaderPressed() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Tu as trouvé le dialog'),
            content: const Text('Ceci est le contenu du ialog. Cherche encore il y a un scaffold'),
            actions: <Widget>[
              TextButton(
                child: const Text('Fermer'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    return Column(
      children: [
        PostHeader(onPressed: onHeaderPressed),
        PostContent(imageList: post.assetImageForDemo),
        PostFooter()
      ],
    );
  }
}
