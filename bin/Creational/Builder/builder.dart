class Button {
  late double _width;
  late double _height;
  late double _radius;

  set setWidth(double width) => _width = width;
  set setHeight(double height) => _height = height;
  set setRadius(double radius) => _radius = radius;

  @override
  String toString() {
    return 'Width: $_width Height: $_height Radius: $_radius';
  }
}

abstract class ButtonBuilder {
  late Button _button;

  void createButton() {
    _button = Button();
  }

  void buildWidth();
  void buildHeigth();
  void buildRadius();

  Button getButton() {
    return _button;
  }
}

class CuprtinoButton extends ButtonBuilder {
  @override
  void buildHeigth() => _button.setHeight = 350;

  @override
  void buildRadius() => _button.setRadius = 30;

  @override
  void buildWidth() => _button._width = 300;
}

class MaterialButton extends ButtonBuilder {
  @override
  void buildHeigth() => _button.setHeight = 200;

  @override
  void buildRadius() => _button.setRadius = 5;

  @override
  void buildWidth() => _button._width = 300;
}

class Dirctor {
  late ButtonBuilder _builderButton;

  set setBuilderButton(ButtonBuilder setBulderButton) =>
      _builderButton = setBulderButton;

  Button buildButton() {
    _builderButton.createButton();
    _builderButton.buildHeigth();
    _builderButton.buildWidth();
    _builderButton.buildRadius();

    var getButton = _builderButton.getButton();

    return getButton;
  }
}








































// // Set Builder
// class House {
//   late String _name;
//   late String _material;
//   late bool _pool;
//   late double _price;

//   set setName(String name) => _name = name;
//   set setMaterial(String material) => _material = material;
//   set setPool(bool pool) => _pool = pool;
//   set setPrice(double price) => _price = price;

//   @override
//   String toString() {
//     return 'Name:$_name Material:$_material Pool:$_pool Price:$_price';
//   }
// }

// abstract class HouseBuilder {
//   late House _house;

//   void createhouse() {
//     _house = House();
//   }

//   void buildName();

//   void buildMaterial();

//   void buildPool();

//   void buildPrice();

//   House getHouse() {
//     return _house;
//   }
// }

// class ExpensiveHouse extends HouseBuilder {
//   @override
//   void buildMaterial() => _house.setMaterial = 'brick';

//   @override
//   void buildName() => _house.setName = 'Expensive House';

//   @override
//   void buildPool() => _house.setPool = true;

//   @override
//   void buildPrice() => _house.setPrice = 100000;
// }

// class NotExpensive extends HouseBuilder {
//   @override
//   void buildMaterial() => _house.setMaterial = 'wooden';

//   @override
//   void buildName() => _house.setName = 'Not Expensive House';

//   @override
//   void buildPool() => _house.setPool = true;

//   @override
//   void buildPrice() => _house.setPrice = 50000;
// }

// class CheeapHouse extends HouseBuilder {
//   @override
//   void buildMaterial() => _house.setMaterial = 'Structural insulated panel';

//   @override
//   void buildName() => _house.setName = 'Сheeap House';

//   @override
//   void buildPool() => _house.setPool = false;

//   @override
//   void buildPrice() => _house.setPrice = 30000;
// }

// class DirectorHouse {
//   late HouseBuilder houseBuilder;

//   set setHouseBuilder(HouseBuilder setHouseBuilder) =>
//       houseBuilder = setHouseBuilder;

//   House houseBuild() {
//     houseBuilder.createhouse();
//     houseBuilder.buildName();
//     houseBuilder.buildMaterial();
//     houseBuilder.buildPool();
//     houseBuilder.buildPrice();

//     var getHouse = houseBuilder.getHouse();

//     return getHouse;
//   }
// }




// // Constructor Builder
// class Pc {
//   final String _cpu;
//   final String _ram;
//   final String _memory;
//   final String _videoCard;

//   Pc(this._cpu, this._memory, this._ram, this._videoCard);

//   @override
//   String toString() {
//     return 'CPU:$_cpu RAM:$_ram Memory:$_memory Video Card:$_videoCard';
//   }
// }

// abstract class PcBuilder {
//   late Pc pc;

//   void createPc() {
//     pc = Pc(buildCpu(), buildRam(), buildMemory(), buildVideoCard());
//   }

//   String buildCpu();
//   String buildRam();
//   String buildMemory();
//   String buildVideoCard();

//   Pc getPc() {
//     pc = Pc(buildCpu(), buildRam(), buildMemory(), buildVideoCard());
//     return pc;
//   }
// }

// class GamePcBuilder extends PcBuilder {
//   @override
//   String buildCpu() {
//     return 'AMD/Intel octa core processor';
//   }

//   @override
//   String buildMemory() {
//     return '1TB';
//   }

//   @override
//   String buildRam() {
//     return '16Gb';
//   }

//   @override
//   String buildVideoCard() {
//     return 'nvidia geforce rtx 3060';
//   }
// }

// class TeacingPcBuilder extends PcBuilder {
//   @override
//   String buildCpu() {
//     return 'AMD/Inter quad core';
//   }

//   @override
//   String buildMemory() {
//     return '512Gb';
//   }

//   @override
//   String buildRam() {
//     return '8Gb';
//   }

//   @override
//   String buildVideoCard() {
//     return 'Integrated';
//   }
// }

// class Director {
//   late PcBuilder pcBuilder;

//   // set setPcBuilder(PcBuilder setPcBuilder) => pcBuilder = setPcBuilder;
//   Director(PcBuilder this.pcBuilder);

//   Pc buildPc() {
//     pcBuilder.createPc();
//     pcBuilder.buildCpu();
//     pcBuilder.buildMemory();
//     pcBuilder.buildRam();
//     pcBuilder.buildVideoCard();

//     var pc = pcBuilder.getPc();

//     return pc;
//   }
// }