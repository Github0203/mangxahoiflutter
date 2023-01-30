import 'package:mangxahoi/thuvien/betterPlayer/src/asms/better_player_asms_audio_track.dart';
import 'package:mangxahoi/thuvien/betterPlayer/src/asms/better_player_asms_subtitle.dart';
import 'package:mangxahoi/thuvien/betterPlayer/src/asms/better_player_asms_track.dart';

class BetterPlayerAsmsDataHolder {
  List<BetterPlayerAsmsTrack>? tracks;
  List<BetterPlayerAsmsSubtitle>? subtitles;
  List<BetterPlayerAsmsAudioTrack>? audios;

  BetterPlayerAsmsDataHolder({this.tracks, this.subtitles, this.audios});
}