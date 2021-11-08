import 'prototype.dart';

void main() {
  Furniture furniture1 = Furniture(10, 20, Color.white);

  FurnitureFactory furnitureFactory = FurnitureFactory(furniture1);

  Object cloneForniture1 = furnitureFactory.makeCloneFurniture();

  print('original: $furniture1');
  print('clone: $cloneForniture1');

  print('-' * 100);

  print('identical ${identical(furniture1, cloneForniture1)}');

  print('-' * 100);

  furniture1.setWidth = 1;
  print('edit original: $furniture1');
  print('clone: $cloneForniture1');

  print('-' * 100);

  Furniture furniture2 = Furniture(1000, 20, Color.white);
  furnitureFactory.setFurnitureFacroty = furniture2;
  Object cloneForniture2 = furnitureFactory.makeCloneFurniture();

  print('new clone: $cloneForniture2');
}


 // var circle = Circle(10, 5, 'color', 10);
  // print(circle);
  // var cloneCircle = circle.clone();
  // print(cloneCircle);
  // print(identical(cloneCircle, circle));

// class Application is
//     field shapes: array of Shape

//     constructor Application() is
//         Circle circle = new Circle()
//         circle.X = 10
//         circle.Y = 10
//         circle.radius = 20
//         shapes.add(circle)

//         Circle anotherCircle = circle.clone()
//         shapes.add(anotherCircle)
//         // anotherCircle буде містити точну копію circle.

//         Rectangle rectangle = new Rectangle()
//         rectangle.width = 10
//         rectangle.height = 20
//         shapes.add(rectangle)

//     method businessLogic() is
//         // Неочевидний плюс Прототипу в тому, що ви можете
//         // клонувати набір об'єктів, не знаючи їхніх конкретних
//         // класів.
//         Array shapesCopy = new Array of Shapes.

//         // Наприклад, ми не знаємо, які конкретно об'єкти
//         // знаходяться всередині масиву shapes так як його
//         // оголошено з типом Shape. Але завдяки поліморфізму, ми
//         // можемо клонувати усі об'єкти «наосліп». Буде виконано
//         // метод clone того класу, яким є цей об'єкт.
//         foreach (s in shapes) do
//             shapesCopy.add(s.clone())

//         // Змінна shapesCopy буде містити точні копії елементів
//         // масиву shapes.
