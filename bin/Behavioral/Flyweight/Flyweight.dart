enum CharactersEnum { archers, warriors }

abstract class Characters {
  void attack();
}

class Archers implements Characters {
  @override
  void attack() => print('Archers attack! ....');
}

class Warriors implements Characters {
  @override
  void attack() => print('Warriors attack! ....');
}

class CharactersFactory {
  final Map<CharactersEnum, Characters> mapCharacter = {};

  Characters getCharacter(CharactersEnum selectCharacter) {
    if (selectCharacter == CharactersEnum.warriors) {
      if (!mapCharacter.containsKey(CharactersEnum.warriors)) {
        print('Warriors created!');
        mapCharacter[selectCharacter] = Warriors();
      }
      return mapCharacter.putIfAbsent(selectCharacter, () => Warriors());
    } else if (!mapCharacter.containsKey(CharactersEnum.archers)) {
      print('Archers created!');
      mapCharacter[selectCharacter] = Archers();
    }
    return mapCharacter.putIfAbsent(selectCharacter, () => Archers());
  }
}
