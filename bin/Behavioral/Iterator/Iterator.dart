abstract class Iterator {
  get current;
  bool moveNext();
}

class AccList implements Iterator {
  int _index = 0;
  final List<String> _acc = [
    'google@gmail.com',
    'dart@gmail.com',
    'flutter@gmail.com'
  ];

  @override
  get current => _acc[_index++];

  @override
  bool moveNext() => _index < _acc.length;
}
