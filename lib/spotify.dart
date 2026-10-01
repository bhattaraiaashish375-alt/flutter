import 'package:flutter/material.dart';

class SpotifyScreen extends StatelessWidget {
  const SpotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar: "Recently played" and action icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recently played",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications_outlined, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.history, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.settings_outlined, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Recently Played Horizontal Artists List
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildArtistItem(
                      'assests/images/wp16214211-raphinha-phone-wallpapers.webp',
                      'Lana Del Rey',
                    ),
                    const SizedBox(width: 16),
                    _buildArtistItem(
                      'assests/images/wp16214211-raphinha-phone-wallpapers.webp',
                      'Marvin Gaye',
                    ),
                    const SizedBox(width: 16),
                    _buildArtistItem(
                      'assests/images/wp16214211-raphinha-phone-wallpapers.webp',
                      'The Weeknd',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Spotify Wrapped Section Header
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        "21",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "#SPOTIFYWRAPPED",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Your 2021 in review",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Spotify Wrapped Cards (2 cards side by side)
              Row(
                children: [
                  Expanded(
                    child: _buildWrappedCard(
                      title: "Your Top Songs 2021",
                      color: const Color(0xFFD4E675), // Yellow-green
                      textColor: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildWrappedCard(
                      title: "Your Artists Revealed",
                      color: const Color(0xFF9E8CD1), // Purple
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Editor's Picks Section Header
              const Text(
                "Editor's picks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Editor's Picks Cards (2 cards side by side)
              Row(
                children: [
                  Expanded(
                    child: _buildEditorPickCard(
                      imagePath: 'assests/images/wp16214211-raphinha-phone-wallpapers.webp',
                      subtitle: "Ed Sheeran, Big Sean, Juice WRLD, Post Malone",
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildEditorPickCard(
                      imagePath: 'assests/images/wp16214211-raphinha-phone-wallpapers.webp',
                      subtitle: "Mitski, Tame Impala, Glass Animals, Charli XCX",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArtistItem(String imagePath, String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 38,
          backgroundColor: Colors.grey[800],
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 76,
              height: 76,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[800],
                  child: const Icon(Icons.person, color: Colors.white54, size: 36),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildWrappedCard({
    required String title,
    required Color color,
    required Color textColor,
  }) {
    return Container(
      height: 170,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.headset, color: Colors.black54, size: 24),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 1.1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditorPickCard({
    required String imagePath,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
