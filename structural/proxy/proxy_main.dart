import '../decorator/lyrics_song_decorator.dart';
import '../decorator/song_decorator.dart';
import 'song.dart';
import 'song_proxy.dart';

void main(List<String> args) {
  // proxy
  final Song songPlayer =
      SongProxy(); // interacting via proxy or gate for better performence

  // decorator pattern is used to add a flavor or functionality without code modification
  // which lead to more maintainable and respect OCD principle

  final SongDecorator lyricsDecorator = LyricsDecorator();
  lyricsDecorator.setSong(
      songPlayer); // set the proxy that controlls song object and perform controll to the decorator
  for (int i = 0; i < 51; i++) {
    lyricsDecorator.playSong(1, 'without you');
  }
  // play the song with extended functionlaity lyrics
}
