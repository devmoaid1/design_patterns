import 'song.dart';
import 'song_model.dart';

class SongProxy extends Song {
  Song? _song;

  Map<String, int> _playedCount = Map<String, int>();

  void playSong(int id, String songName) {
    if (_song == null) {
      _song = SongModel();
    }

    int currentCount = _playedCount[songName] ?? 0;

    if (currentCount >= 50) {
      // exceeded limit
      return;
    }

    _playedCount[songName] = currentCount + 1;
    _song!.playSong(id, songName);
  }
}
