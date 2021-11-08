abstract class State {
  void showSlide();
}

class SlideOne implements State {
  @override
  void showSlide() => print('show slide one');
}

class SlideTwo implements State {
  @override
  void showSlide() => print('show slide two');
}

class SlideThree implements State {
  @override
  void showSlide() => print('show slide three');
}

class SliedShow {
  State? _state;

  set setState(State state) => _state = state;

  void changeState() {
    if (_state is SlideThree) {
      setState = SlideTwo();
    } else if (_state is SlideTwo) {
      setState = SlideOne();
    } else if (_state is SlideOne) {
      setState = SlideThree();
    }
  }

  void slideShow() {
    _state?.showSlide();
  }
}
