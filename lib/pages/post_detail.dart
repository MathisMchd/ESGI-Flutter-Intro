import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intro_flutter/Entity/PostDto.dart';
import 'dart:math'; // For min function in _getSnippet

class PostDetail extends StatefulWidget {
  final PostDto post;
  const PostDetail({super.key, required this.post});

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    final ImageProvider? firstImage = widget.post.assetImageForDemo.isNotEmpty
        ? this.widget.post.assetImageForDemo.first
        : null;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post.author),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.post.author,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const Gap(20),
                Expanded(
                  child: Text(
                    "Nombre de commentaires : ${widget.post.commentsCount}",
                    style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),

            Hero(
              tag: 'postImage-${widget.post.id}', // SAME tag as in PostResum!
              child: ClipRRect( // Also add ClipRRect here for consistent visual
                borderRadius: BorderRadius.circular(8.0), // Match the radius if desired
                child: firstImage != null
                    ? Image(
                  image: firstImage,
                  height: 300.0, // This is the final height in detail view
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
                    : Container( // Placeholder if no image is available
                  height: 300.0,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: const Icon(Icons.image, size: 80, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              widget.post.caption,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),

            // Timestamp
            Text(
              "Date : ${DateTime.fromMillisecondsSinceEpoch(widget.post.timestamp).toLocal()}",
              style: const TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}