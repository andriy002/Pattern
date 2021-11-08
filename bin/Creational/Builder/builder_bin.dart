import 'builder.dart';

void main() {
  Dirctor director = Dirctor();
  director.setBuilderButton = CuprtinoButton();
  Button iosButton = director.buildButton();

  print(iosButton);

  director.setBuilderButton = MaterialButton();
  Button androidButton = director.buildButton();

  print(androidButton);
}









































// var director = Director(TeacingPcBuilder());
  // var TeachingPc = director.buildPc();
  // print(TeachingPc);
  // var newDirector = Director(GamePcBuilder());
  // var gamePc = newDirector.buildPc();
  // print(gamePc);

  // var directorHouse = DirectorHouse();
  // directorHouse.setHouseBuilder = ExpensiveHouse();
  // var expensiveHouse = directorHouse.houseBuild();
  // print(expensiveHouse);
  // directorHouse.setHouseBuilder = CheeapHouse();
  // var cheeapHouse = directorHouse.houseBuild();
  // print(cheeapHouse);