// screens/player_page.dart
import 'package:flutter/material.dart';
import '../models/song.dart';

class PlayerPage extends StatelessWidget {
  final Song song;

  // ignore: use_super_parameters
  const PlayerPage({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(song.imageUrl),
              radius: 100,
            ),
            SizedBox(height: 20),
            Text(
              song.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              song.artist,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              song.album,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement play/pause functionality here
              },
              child: Icon(Icons.play_arrow),
            ),
          ],
        ),
      ),
    );
  }
}
