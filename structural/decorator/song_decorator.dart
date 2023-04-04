// ignore_for_file: unused_field

import '../proxy/song.dart';
import '../proxy/song_proxy.dart';

abstract class SongDecorator extends SongProxy {
  late Song _song;

  void setSong(Song song);
}
