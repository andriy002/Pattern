import 'composite.dart';

void main() {
  Basket basket = Basket();

  basket.addProduct(Phone());
  basket.addProduct(Tablet());

  basket.showPriceProduct();
}
