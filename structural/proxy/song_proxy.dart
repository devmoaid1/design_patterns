import 'song.dart';
import 'song_model.dart';

class SongProxy extends Song {
  Song? _song;

  Map<String, int> _playedCount = Map<String, int>();

  void playSong(int id, String songName) {
    if (_song == null) {
      _song = SongModel();
    }

    // dont play song more than 50 times

    if (!_playedCount.containsKey(songName)) {
      // first time played
      _playedCount[songName] = 1;
      _song!.playSong(id, songName);
    } else {
      if (_playedCount[songName]! >= 50) {
        // excceded limit
        print('exceeded the quota for today');
      } else {
        // play song and increment count by one for song
        _song!.playSong(id, songName);
        _playedCount.update(songName, (value) {
          return value + 1;
        });
      }
    }
  }
}
