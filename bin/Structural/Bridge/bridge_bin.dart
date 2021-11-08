import 'bridge.dart';

void main() {
  Program android = AppleOs(iOS());
  Program ios = AndroidOs(Android());
  android.runProgram();
  ios.runProgram();
}
