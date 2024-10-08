import 'package:flutter/material.dart';
import 'screens/music_player_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Dark theme for professional look
      home: const MusicPlayerHome(),
    );
  }
}
