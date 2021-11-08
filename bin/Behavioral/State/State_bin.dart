import 'State.dart';

void main() {
  State slideState = SlideThree();
  SliedShow slide = SliedShow();

  slide.setState = slideState;

  for (var i = 0; i < 3; i++) {
    slide.slideShow();
    slide.changeState();
  }
}
