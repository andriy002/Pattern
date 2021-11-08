abstract class Logistics {
  void createTrasnport(String transportName);
  void move();
}

abstract class LogisticsFactory {
  Logistics createLogistics();
}

class RoadLogistics implements Logistics {
  @override
  void move() => print('move road...');

  @override
  void createTrasnport(String transportName) => print('$transportName created');
}

class SeaLogistics implements Logistics {
  @override
  void move() => print('move sea...');

  @override
  void createTrasnport(String transportName) => print('$transportName created');
}

class RoadLogisticsFactory implements LogisticsFactory {
  @override
  Logistics createLogistics() => RoadLogistics();
}

class SeaLogisticsFactory implements LogisticsFactory {
  @override
  Logistics createLogistics() => SeaLogistics();
}

abstract class CreateLogisrics {
  static LogisticsFactory createLogistics(String logisticsName) {
    if (logisticsName.toLowerCase() == 'road') {
      return RoadLogisticsFactory();
    } else if (logisticsName.toLowerCase() == 'sea') {
      return SeaLogisticsFactory();
    } else {
      throw Exception(logisticsName + 'is unknown Logistics Name');
    }
  }
}
