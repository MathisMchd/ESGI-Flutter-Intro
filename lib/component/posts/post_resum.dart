import 'package:flutter/material.dart';
import 'package:intro_flutter/Entity/PostDto.dart';
import 'package:intro_flutter/pages/post_detail.dart';

class PostResum extends StatefulWidget {
  final PostDto post;

  const PostResum({super.key, required this.post});

  @override
  State<PostResum> createState() => _PostResumState();
}

class _PostResumState extends State<PostResum> {
  @override
  Widget build(BuildContext context) {
    final ImageProvider? firstImage =
        this.widget.post.assetImageForDemo.isNotEmpty
        ? this.widget.post.assetImageForDemo.first
        : null;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostDetail(post: widget.post),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'postImage-${widget.post.id}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: firstImage != null
                    ? Image(
                        image: firstImage,
                        height: 200.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        // Pas d'image
                        height: 200.0,
                        width: double.infinity,
                        color: Colors.grey,
                        child: const Icon(
                          Icons.image,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              widget.post.author,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    _getSnippet(widget.post.caption, 50),
                    style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _getSnippet(String description, int maxLength) {
    if (description.length <= maxLength) {
      return description;
    }
    return '${description.substring(0, maxLength)}...';
  }
}
