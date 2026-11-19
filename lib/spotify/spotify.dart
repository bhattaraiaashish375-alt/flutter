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

              // Recently Played Horizontal Artists List (Lana Del Rey & Marvin Gaye)
              SizedBox(
                height: 115,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildArtistItem('Lana Del Rey', Colors.amber[200]!),
                    const SizedBox(width: 18),
                    _buildArtistItem('Marvin Gaye', Colors.grey[400]!),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Spotify Wrapped Section Header
              Row(
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC7B3E5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        "21",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
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
                    child: _buildTopSongs2021Card(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildArtistsRevealedCard(),
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
                    child: _buildEditorsPick1(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildEditorsPick2(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArtistItem(String name, Color placeholderColor) {
    return Column(
      children: [
        CircleAvatar(
          radius: 38,
          backgroundColor: placeholderColor,
          child: Text(
            name[0],
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
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

  // Your Top Songs 2021 Card
  Widget _buildTopSongs2021Card() {
    return Container(
      height: 190,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFD4E675),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.podcasts, color: Color(0xFF2F2942), size: 18),
              Text(
                "21 ✨",
                style: TextStyle(
                  color: Color(0xFF2F2942),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Your Top Songs",
                style: TextStyle(
                  color: Color(0xFF2F2942),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "2021",
                style: TextStyle(
                  color: Color(0xFF2F2942),
                  fontSize: 38,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Your Artists Revealed Card
  Widget _buildArtistsRevealedCard() {
    return Container(
      height: 190,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF9E8CD1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.podcasts, color: Colors.white, size: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Your Artists",
                style: TextStyle(
                  color: Color(0xFF1C1340),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                ),
              ),
              Text(
                "Revealed",
                style: TextStyle(
                  color: Color(0xFF1C1340),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Editor's Pick 1
  Widget _buildEditorsPick1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[900],
              ),
              child: const Center(
                child: Icon(Icons.music_note, size: 48, color: Colors.white54),
              ),
            ),
            const Positioned(
              top: 8,
              left: 8,
              child: Icon(Icons.podcasts, color: Colors.white, size: 16),
            ),
            Positioned(
              bottom: 4,
              right: 12,
              child: Text(
                "1",
                style: TextStyle(
                  color: const Color(0xFFD4E675),
                  fontSize: 56,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      color: Colors.black.withValues(alpha: 0.8),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          "Ed Sheeran, Big Sean,\nJuice WRLD, Post Malone",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            height: 1.25,
          ),
        ),
      ],
    );
  }

  // Editor's Pick 2
  Widget _buildEditorsPick2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF5B7E72),
              ),
              child: const Center(
                child: Icon(Icons.headset, size: 48, color: Colors.white54),
              ),
            ),
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFB5E8D3).withValues(alpha: 0.6),
                  width: 6,
                ),
              ),
            ),
            const Positioned(
              top: 8,
              left: 8,
              child: Icon(Icons.podcasts, color: Colors.white, size: 16),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("F R O", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 16, letterSpacing: 1)),
                  Text("N T", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 16, letterSpacing: 1)),
                  Text("L E F T", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 16, letterSpacing: 1)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          "Mitski, Tame Impala,\nGlass Animals, Charli XCX",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            height: 1.25,
          ),
        ),
      ],
    );
  }
}
