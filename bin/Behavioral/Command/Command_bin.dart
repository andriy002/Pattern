import 'Command.dart';

void main() {
  AudioPlayer audioPlayer = AudioPlayer();

  User user = User(PlayComand(audioPlayer), StopCommand(audioPlayer),
      PauseCommand(audioPlayer), PowerCommand(audioPlayer));
  user.powerPlayer();
  user.playAudio();
  user.stopAudio();
  user.pauseAudio();
}
