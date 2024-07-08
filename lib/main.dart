// main.dart
import 'package:flutter/material.dart';
import 'models/song.dart';
import 'screens/home_page.dart';
import 'screens/player_page.dart';
import 'myapp/models/song.dart'; // Import the Song model

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'player_page': (context) => PlayerPage(song: Song(
          title: 'Example Song',
          artist: 'Example Artist',
          album: 'Example Album',
          imageUrl: 'assets/example.jpg', // Adjust path accordingly
        )),
      },
    ),
  );
}
