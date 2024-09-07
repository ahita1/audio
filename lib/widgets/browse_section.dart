import 'package:flutter/material.dart';
import 'category_card.dart';

class BrowseSection extends StatelessWidget {
  const BrowseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
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
      ],
    );
  }
}
