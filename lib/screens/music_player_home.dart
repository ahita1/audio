import 'package:flutter/material.dart';
import '../widgets/browse_section.dart';
import '../widgets/recommendation_section.dart';
import '../widgets/song_list.dart';

class MusicPlayerHome extends StatelessWidget {
  const MusicPlayerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C1056), // Dark purple background
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2C1056),
        leading: IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BrowseSection(),
            SizedBox(height: 24),
            RecommendationSection(),
            SizedBox(height: 16),
            Expanded(child: SongList()), // Scrollable song list
          ],
        ),
      ),
    );
  }
}
