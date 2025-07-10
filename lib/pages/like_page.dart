import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intro_flutter/main.dart';



class LikePage extends ConsumerWidget {
  LikePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(likeCounterProvider);

    return Column(
      children: [
        Text("Nombre de like total : $count"),
      ],
    );
  }
}