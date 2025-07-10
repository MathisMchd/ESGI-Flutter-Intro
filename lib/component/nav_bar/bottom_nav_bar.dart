import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Posts"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Liked"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "Posts Lists"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Compte"),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      backgroundColor: Colors.white,
    );
  }
}
