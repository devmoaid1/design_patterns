import 'song_proxy.dart';

void main(List<String> args) {
  final songPlayer =
      SongProxy(); // interacting via proxy or gate for better performence

  for (int i = 0; i < 52; i++) {
    songPlayer.playSong(1, 'without you');
  }
}
