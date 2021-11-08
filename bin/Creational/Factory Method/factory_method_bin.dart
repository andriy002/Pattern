import 'factory_method.dart';

void main() {
  LogisticsFactory logisticsFactory = CreateLogisrics.createLogistics('sea');
  Logistics logistics = logisticsFactory.createLogistics();
  logistics.createTrasnport('car');
  logistics.move();
}
