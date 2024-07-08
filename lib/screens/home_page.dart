import 'package:flutter/material.dart';

void main() {
  runApp(MyMusicPlayerApp());
}

class MyMusicPlayerApp extends StatelessWidget {
  const MyMusicPlayerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Dummy list of songs
  List<String> songs = [
    'Song 1',
    'Song 2',
    'Song 3',
  ];

  // Index of currently playing song
  int currentSongIndex = 0;

  // Variable to control playback state
  bool isPlaying = false;

  void playPause() {
    setState(() {
      isPlaying = !isPlaying; // Toggle playback state
    });
  }

  void nextSong() {
    setState(() {
      currentSongIndex = (currentSongIndex + 1) % songs.length;
      isPlaying = true; // Automatically start playing next song
    });
  }

  void previousSong() {
    setState(() {
      currentSongIndex = (currentSongIndex - 1) % songs.length;
      if (currentSongIndex < 0) {
        currentSongIndex = songs.length - 1;
      }
      isPlaying = true; // Automatically start playing previous song
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              songs[currentSongIndex],
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: previousSong,
                ),
                IconButton(
                  icon: isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                  iconSize: 64.0,
                  onPressed: playPause,
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: nextSong,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
