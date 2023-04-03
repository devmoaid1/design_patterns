abstract class Song {
  final int? id;
  final String? songName;
  final String? artist;

  Song({this.id, this.songName, this.artist});

  void playSong(int id, String songName);
}
