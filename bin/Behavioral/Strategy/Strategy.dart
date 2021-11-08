abstract class Strategy {
  void showSlide();
}

class SlideOne implements Strategy {
  @override
  void showSlide() => print('show slide one');
}

class SlideTwo implements Strategy {
  @override
  void showSlide() => print('show slide two');
}

class SlideThree implements Strategy {
  @override
  void showSlide() => print('show slide three');
}

class SliedShow {
  Strategy? _strategy;

  set setStrategy(Strategy startegy) => _strategy = startegy;

  void slideShow() {
    _strategy?.showSlide();
  }
}
