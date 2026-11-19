import 'package:flutter/material.dart';
import 'social_media_card.dart';

class SocialMediaFeedScreen extends StatelessWidget {
  const SocialMediaFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          'Social Feed',
          style: TextStyle(
            color: Color(0xFF1877F2),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: const [
          SocialMediaCard(
            username: 'Aashish Bhattarai',
            timeAgo: '2 hrs ago',
            profileImageUrl: 'lib/spotify/assets/photos/wrapped_1.webp',
            postContent: 'Building sleek cross-platform apps with Flutter and Dart! 🚀✨',
            postImageUrl: 'lib/spotify/assets/photos/wrapped_1.webp',
          ),
          SocialMediaCard(
            username: 'Snazzy Dev',
            timeAgo: 'Yesterday',
            profileImageUrl: 'lib/spotify/assets/photos/wrapped_2.webp',
            postContent: 'Clean architecture and reusable widgets make development so much faster and enjoyable. What are you building today?',
          ),
        ],
      ),
    );
  }
}
