import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2C1056), // Background color
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF2C1056), // AppBar matches background
          leading: IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'BROWSE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                      imagePath: 'assets/clear_mind.jpg',
                      title: 'CLEAR MIND',
                      subtitle: 'Instrumental',
                    ),
                    SizedBox(width: 16),
                    CategoryCard(
                      imagePath: 'assets/urban_mood.jpg',
                      title: 'URBAN MOOD',
                      subtitle: 'Hip-Hop',
                    ),
                    SizedBox(width: 16),
                    CategoryCard(
                      imagePath: 'assets/summer_vibes.jpg',
                      title: 'SUMMER VIBES',
                      subtitle: 'Country',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommendation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'New Music',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: const [
                    SongTile(
                      imagePath: 'assets/born_to_die.jpg',
                      title: 'BORN TO DIE',
                      artist: 'Lana Del Rey',
                    ),
                    SongTile(
                      imagePath: 'assets/jolene.jpg',
                      title: 'JOLENE',
                      artist: 'Dolly Parton',
                    ),
                    SongTile(
                      imagePath: 'assets/wrecking_ball.jpg',
                      title: 'WRECKING BALL',
                      artist: 'Miley Cyrus',
                    ),
                    SongTile(
                      imagePath: 'assets/butter.jpg',
                      title: 'BUTTER',
                      artist: 'BTS',
                    ),
                    SongTile(
                      imagePath: 'assets/baby.jpg',
                      title: 'BABY',
                      artist: 'Justin Bieber',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const CategoryCard({super.key, required this.imagePath, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class SongTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String artist;

  const SongTile({super.key, required this.imagePath, required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                artist,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
