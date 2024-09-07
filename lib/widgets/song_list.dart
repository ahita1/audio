import 'package:flutter/material.dart';
import 'song_tile.dart';

class SongList extends StatelessWidget {
  const SongList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
