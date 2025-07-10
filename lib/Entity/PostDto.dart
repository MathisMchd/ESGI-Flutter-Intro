import 'package:flutter/material.dart';

class PostDto {
  final String id;
  final String author;
  final String profileImageUrl;
  final String imageUrl;
  final List<ImageProvider> assetImageForDemo;
  final String caption;
  final int timestamp;
  final int likesCount;
  final int commentsCount;
  final bool isLikedByCurrentUser;

  PostDto({
    required this.id,
    required this.author,
    required this.profileImageUrl,
    required this.imageUrl,
    this.assetImageForDemo = const [],
    required this.caption,
    required this.timestamp,
    required this.likesCount,
    required this.commentsCount,
    required this.isLikedByCurrentUser,
  });
}
