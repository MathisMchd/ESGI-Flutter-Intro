import 'package:riverpod_annotation/riverpod_annotation.dart';



@riverpod
class LikeCounter extends Notifier {
  @override
  int build() => 0;

  void increment() => state++;

  void decrement() => state--;
}
