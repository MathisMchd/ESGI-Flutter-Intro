import 'package:flutter/material.dart';
import 'package:intro_flutter/Entity/PostDto.dart';
import 'package:intro_flutter/component/nav_bar/bottom_nav_bar.dart';
import 'package:intro_flutter/pages/chat_list_page.dart';
import 'package:intro_flutter/pages/home_page.dart';
import 'package:intro_flutter/pages/like_page.dart';
import 'package:intro_flutter/pages/post_list_page.dart';
import 'package:intro_flutter/pages/profile_page.dart';



class BasePage extends StatefulWidget {
  const BasePage({super.key});


  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;
  static final List<PostDto> samplePosts = [
    PostDto(
        id: '1',
        author: 'jane_doe',
        profileImageUrl: 'https://i.pravatar.cc/150?img=1',
        imageUrl: 'https://picsum.photos/id/1011/500/500',
        caption: 'Chilling in the mountains 🏔️',
        timestamp: DateTime.now().millisecondsSinceEpoch - 3600000,
        likesCount: 120,
        commentsCount: 15,
        isLikedByCurrentUser: true,
        assetImageForDemo: [
          Image.asset("assets/images/bg_screen.jpg").image,
          Image.asset("assets/images/profile.jpg").image]
    ),
    PostDto(
        id: '2',
        author: 'john_smith',
        profileImageUrl: 'https://i.pravatar.cc/150?img=2',
        imageUrl: 'https://picsum.photos/id/1012/500/500',
        caption: 'Sunset by the beach 🌅',
        timestamp: DateTime.now().millisecondsSinceEpoch - 7200000,
        likesCount: 235,
        commentsCount: 40,
        isLikedByCurrentUser: false,
        assetImageForDemo: [
          Image.asset("assets/images/profile.jpg").image,
          Image.asset("assets/images/bg_screen.jpg").image]
    ),
    PostDto(
        id: '3',
        author: 'emily_art',
        profileImageUrl: 'https://i.pravatar.cc/150?img=3',
        imageUrl: 'https://picsum.photos/id/1013/500/500',
        caption: 'My latest painting 🎨',
        timestamp: DateTime.now().millisecondsSinceEpoch - 18000000,
        likesCount: 312,
        commentsCount: 65,
        isLikedByCurrentUser: true,
        assetImageForDemo: [
          Image.asset("assets/images/bg_screen.jpg").image
        ]
    ),
    PostDto(
        id: '4',
        author: 'tech_guru',
        profileImageUrl: 'https://i.pravatar.cc/150?img=4',
        imageUrl: 'https://picsum.photos/id/1014/500/500',
        caption: 'Just got my hands on the new gadget 🔥',
        timestamp: DateTime.now().millisecondsSinceEpoch - 86400000,
        likesCount: 98,
        commentsCount: 12,
        isLikedByCurrentUser: false,
        assetImageForDemo: [Image.asset("assets/images/bg_screen.jpg").image]
    ),
    PostDto(
        id: '5',
        author: 'Joshua',
        profileImageUrl: 'https://i.pravatar.cc/150?img=4',
        imageUrl: 'https://picsum.photos/id/1014/500/500',
        caption: 'Just got my hands on the new gadget 🔥',
        timestamp: DateTime.now().millisecondsSinceEpoch - 86400000,
        likesCount: 98,
        commentsCount: 12,
        isLikedByCurrentUser: false,
        assetImageForDemo: [Image.asset("assets/images/logo_nantes.png").image]
    )
  ];

  static final List<Widget> _pages = <Widget>[
    HomePage(postList: samplePosts),
    ChatListPage(),
    LikePage(),
    PostListPage(postList: samplePosts),
    ProfilePage()
  ];

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : Column(
          children :  [
            Expanded(
            child: IndexedStack(index: _selectedIndex, children: _pages),
            )
          ],
        )

      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomNavItemTapped,
      ),
    );
  }
}
