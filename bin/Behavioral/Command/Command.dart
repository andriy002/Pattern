class AudioPlayer {
  void onAudioPlayer() => print('Audio player on');
  void playAudio() => print('Music play');
  void stopAudio() => print('Music stop');
  void pauseAudio() => print('Music pause');
}

abstract class Command {
  void execute();
}

class PlayComand implements Command {
  AudioPlayer player;

  PlayComand(this.player);

  void execute() => player.playAudio();
}

class StopCommand implements Command {
  AudioPlayer player;

  StopCommand(this.player);

  void execute() => player.stopAudio();
}

class PauseCommand extends Command {
  AudioPlayer player;

  PauseCommand(this.player);

  void execute() => player.pauseAudio();
}

class PowerCommand extends Command {
  AudioPlayer player;

  PowerCommand(this.player);

  void execute() => player.onAudioPlayer();
}

class User {
  Command play;
  Command stop;
  Command pause;
  Command onPlayer;

  User(this.play, this.stop, this.pause, this.onPlayer);

  void playAudio() => play.execute();
  void stopAudio() => stop.execute();
  void pauseAudio() => pause.execute();
  void powerPlayer() => onPlayer.execute();
}




















// class DataBase {
//   void insert() => print('Inserting record...');
//   void update() => print('Updating record...');
//   void select() => print('Reading record...');
//   void delete() => print('Deleting record...');
// }

// abstract class Command {
//   void execute();
// }

// class InsertCommand implements Command {
//   DataBase database;

//   InsertCommand(this.database);

//   void execute() => database.insert();
// }

// class UpdateCommand implements Command {
//   DataBase database;

//   UpdateCommand(this.database);

//   void execute() => database.update();
// }

// class SelectCommand extends Command {
//   DataBase database;

//   SelectCommand(this.database);

//   void execute() => database.select();
// }

// class DeleteCommand extends Command {
//   DataBase database;

//   DeleteCommand(this.database);

//   void execute() => database.delete();
// }

// class Dev {
//   Command insert;
//   Command update;
//   Command select;
//   Command delete;

//   Dev(this.insert, this.update, this.select, this.delete);

//   void inserRecord() => insert.execute();
//   void updateRecord() => update.execute();
//   void selectRecord() => select.execute();
//   void deleteRecord() => delete.execute();
// }
