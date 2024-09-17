// ignore_for_file: unused_field

import '../proxy/song.dart';
import 'song_decorator.dart';

class LyricsDecorator extends SongDecorator {
  Song? _song;

  set song(Song song) => this._song = song;
  void showLyrics(int id, String songName) {
    print('lyrics are shown for song id : $id and name : $songName');
  }

  @override
  void playSong(int id, String songName) {
    if (_song == null) {
      throw 'Song isn`t set';
    } else {
      _song!.playSong(id, songName);
      showLyrics(id, songName);
    }
  }
}
