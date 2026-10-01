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

              // Spotify Wrapped Cards (2 cards side by side matching screenshot)
              Row(
                children: [
                  Expanded(
                    child: _buildTopSongsCard(),
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

              // Editor's Picks Cards (2 cards side by side matching screenshot)
              Row(
                children: [
                  Expanded(
                    child: _buildEditorPickCard1(
                      imagePath: 'assests/images/wp16214211-raphinha-phone-wallpapers.webp',
                      subtitle: "Ed Sheeran, Big Sean, Juice WRLD, Post Malone",
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildEditorPickCard2(
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

  // Your Top Songs 2021 Card (Yellow-green background with 2021 typography)
  Widget _buildTopSongsCard() {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFD3E772),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.circle, color: Colors.black, size: 14),
              Text(
                "21 ✨",
                style: TextStyle(
                  color: Colors.black54,
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
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "2021",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Your Artists Revealed Card (Purple background with stylized text)
  Widget _buildArtistsRevealedCard() {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF9E8CD1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.circle, color: Colors.white, size: 14),
              Text(
                "✨",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Your Artists",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Revealed",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Editor's Pick Card 1 (Ed Sheeran style with number 1 badge)
  Widget _buildEditorPickCard1({
    required String imagePath,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
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
            Positioned(
              top: 8,
              left: 8,
              child: const Icon(Icons.circle, color: Colors.white, size: 14),
            ),
            Positioned(
              bottom: 4,
              right: 8,
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.yellowAccent.withValues(alpha: 0.9),
                  fontSize: 56,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
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

  // Editor's Pick Card 2 (FRONT LEFT style with overlay typography)
  Widget _buildEditorPickCard2({
    required String imagePath,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  colors: [Color(0xFF3B6B5B), Color(0xFF1E3A32)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.teal.withValues(alpha: 0.4),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: const Icon(Icons.circle, color: Colors.white, size: 14),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("F R O", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 16)),
                  Text("N T", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 16)),
                  Text("L E F T", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
            ),
          ],
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
