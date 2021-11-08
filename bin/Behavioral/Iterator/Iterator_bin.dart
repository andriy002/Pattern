import 'Iterator.dart';

void main() {
  var acc = AccList();

  while (acc.moveNext()) {
    print(acc.current);
  }
}
