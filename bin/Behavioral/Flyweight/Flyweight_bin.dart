import 'Flyweight.dart';

void main() {
  CharactersFactory characterFactory = CharactersFactory();

  List<Characters> characters = [];

  characters.add(characterFactory.getCharacter(CharactersEnum.warriors));
  characters.add(characterFactory.getCharacter(CharactersEnum.warriors));
  characters.add(characterFactory.getCharacter(CharactersEnum.warriors));
  characters.add(characterFactory.getCharacter(CharactersEnum.archers));
  characters.add(characterFactory.getCharacter(CharactersEnum.archers));
  characters.add(characterFactory.getCharacter(CharactersEnum.archers));
  characters.add(characterFactory.getCharacter(CharactersEnum.archers));
  characters.add(characterFactory.getCharacter(CharactersEnum.archers));

  for (var item in characters) {
    item.attack();
  }

  print(identical(characters[4], characters[7]));
}
