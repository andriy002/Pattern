abstract class Product {
  String nameProduct();
  int showPrice();
}

class Phone implements Product {
  @override
  int showPrice() => 150;

  @override
  String nameProduct() => 'Phone';
}

class Tablet implements Product {
  @override
  int showPrice() => 300;

  @override
  String nameProduct() => 'Tablet';
}

class Basket {
  List<Product> productList = <Product>[];

  void addProduct(Product product) => productList.add(product);
  void removeProduct(Product product) => productList.remove(product);

  void showPriceProduct() {
    int allPrice = 0;
    for (int i = 0; i < productList.length; i++) {
      allPrice += productList[i].showPrice();
      print(
          'Product: ${productList[i].nameProduct()}. Price: ${productList[i].showPrice()}\$');
    }
    print('Purchase price: $allPrice\$');
  }
}
