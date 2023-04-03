import 'song.dart';

class SongModel extends Song {
  SongModel({int? id, String? artist, String? songName})
      : super(artist: artist, id: id, songName: songName);

  @override
  void playSong(int id, String songName) {
    print('song with id ${id} and name ${songName} is played now');
  }
}
