import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intro_flutter/main.dart';

class PostFooter extends ConsumerStatefulWidget {
  const PostFooter({super.key});

  @override
  ConsumerState<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends ConsumerState<PostFooter> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 1.4).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHeartTapped() {
    setState(() {
      _isLiked = !_isLiked;
    });
    _controller.forward(from: 0.0);


    if (_isLiked) {
      ref.read(likeCounterProvider.notifier).state++;
    } else {
      ref.read(likeCounterProvider.notifier).state--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: _onHeartTapped,
          child: ScaleTransition(
            scale: _animation,
            child: Icon(
              _isLiked ? Icons.favorite : Icons.favorite_border,
              size: 30.0,
              color: _isLiked ? Colors.red : Colors.black,
            ),
          ),
        ),
        const Icon(
          Icons.chat_bubble_outline,
          size: 30.0,
          color: Colors.black,
        ),
        const Icon(
          Icons.send_outlined,
          size: 30.0,
          color: Colors.black,
        ),
        const Icon(
          Icons.bookmark_border,
          size: 30.0,
          color: Colors.black,
        ),
      ],
    );
  }
}