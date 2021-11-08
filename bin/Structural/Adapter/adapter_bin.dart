import 'adapter.dart';

void main() {
  FireBase dartApp = DartAdapter();
  FireBase fireBase = FireBase();

  fireBase.insert();
  fireBase.remove();
  fireBase.update();

  dartApp.insert();
  dartApp.remove();
  dartApp.update();
}
