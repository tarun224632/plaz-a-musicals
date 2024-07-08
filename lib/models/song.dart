// models/song.dart
class Song {
  final String title;
  final String artist;
  final String album;
  final String imageUrl; // URL or path to song cover art

  Song({
    required this.title,
    required this.artist,
    required this.album,
    required this.imageUrl,
  });
}
