class Singleton {
  String _instance;
  static Singleton _app = Singleton._privatConstructor('');

  Singleton._privatConstructor(this._instance);

  factory Singleton(String str) {
    if (_app._instance == '') {
      _app = Singleton._privatConstructor(str);
    }
    return _app;
  }

  String getInstance() {
    return _instance;
  }
}

class SingletonTwo {
  final String _instance;
  static SingletonTwo _app = SingletonTwo._privatConstructor('');

  SingletonTwo._privatConstructor(this._instance);

  static SingletonTwo getInstance(String str) {
    if (_app._instance == '') {
      _app = SingletonTwo._privatConstructor(str);
    }
    return _app;
  }

  @override
  String toString() {
    return _instance;
  }
}
