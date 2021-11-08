import 'Strategy.dart';

void main() {
  SliedShow slideShow = SliedShow();

  slideShow.setStrategy = SlideOne();
  slideShow.slideShow();

  slideShow.setStrategy = SlideTwo();
  slideShow.slideShow();

  slideShow.setStrategy = SlideThree();
  slideShow.slideShow();
}
