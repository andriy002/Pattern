class PowerPlayer {
  bool? _onPlayer;

  get getOnPlayer => _onPlayer;

  void onPlayer() {
    _onPlayer = true;
  }

  void offPlayer() {
    _onPlayer = false;
  }
}

class PlayStopPlayer {
  bool? _play;
  bool? _stop;

  get getPlay => _play;
  get getStop => _stop;

  void playPlayer() {
    _play = true;
    _stop = false;
  }

  void pausePlayer() {
    _play = false;
    _stop = false;
  }

  void stopPlayer() {
    _play = false;
    _stop = true;
  }
}

class PlayerCheck {
  void checkPowerPlayer(PowerPlayer powerPlayer) {
    if (powerPlayer.getOnPlayer) {
      print('Audio player on');
    } else {
      print('Audio Player off');
    }
  }

  void checkPlayer(PlayStopPlayer playerCheck) {
    if (playerCheck.getPlay) {
      print('Music play...');
    } else if (!playerCheck.getPlay && !playerCheck.getStop) {
      print('Music pause...');
    } else if (playerCheck.getStop) {
      print('Music stop...');
    }
  }
}

class AudioPlayer {
  PlayerCheck playerCheck = PlayerCheck();
  PlayStopPlayer playAndStop = PlayStopPlayer();
  PowerPlayer powerPlayer = PowerPlayer();

  void audioPlayerWork(String status) {
    if (status.toLowerCase() == 'play') {
      powerPlayer.onPlayer();
      playerCheck.checkPowerPlayer(powerPlayer);
      playAndStop.playPlayer();
      playerCheck.checkPlayer(playAndStop);
    } else if (status.toLowerCase() == 'pause') {
      powerPlayer.onPlayer();
      playerCheck.checkPowerPlayer(powerPlayer);
      playAndStop.pausePlayer();
      playerCheck.checkPlayer(playAndStop);
    } else {
      powerPlayer.offPlayer();
      playerCheck.checkPowerPlayer(powerPlayer);
      playAndStop.stopPlayer();
      playerCheck.checkPlayer(playAndStop);
    }
  }
}
