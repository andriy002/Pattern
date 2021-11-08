enum Color { red, white, green, yellow, gray }

abstract class Prototype {
  Object copy();
}

class Furniture implements Prototype {
  double _width;
  double _height;
  Color _color;

  Furniture(this._width, this._height, this._color);

  double get getWidth => _width;
  double get getHeight => _height;
  Color get getColor => _color;

  set setWidth(double width) => _width = width;
  set setHeight(double height) => _height = height;
  set setColor(Color color) => _color = color;

  @override
  String toString() {
    return '$_width, $_height, $_color';
  }

  @override
  Object copy() {
    var copyObject = Furniture(_width, _height, _color);
    return copyObject;
  }
}

class FurnitureFactory {
  Furniture _furniture;

  FurnitureFactory(this._furniture);

  set setFurnitureFacroty(setFurniture) => _furniture = setFurniture;

  Object makeCloneFurniture() {
    return _furniture.copy();
  }
}





















































// // Конкретний прототип. Метод клонування створює новий об'єкт
// // поточного класу, передаючи до конструктора посилання на
// // власний об'єкт. Завдяки цьому, клонування виходить
// // атомарним — доки не виконається конструктор, нового об'єкта
// // ще не існує. Але як тільки конструктор завершено, ми
// // отримаємо завершений об'єкт-клон, а не порожній об'єкт, який
// // потрібно ще заповнити.
// class Rectangle extends Shape is
//     field width: int
//     field height: int

//     constructor Rectangle(source: Rectangle) is
//         // Виклик батьківського конструктора потрібен, щоб
//         // скопіювати потенційні приватні поля, оголошені в
//         // батьківському класі.
//         super(source)
//         this.width = source.width
//         this.height = source.height

//     method clone(): Shape is
//         return new Rectangle(this)

// class Circle extends Shape is
//     field radius: int

//     constructor Circle(source: Circle) is
//         super(source)
//         this.radius = source.radius

//     method clone(): Shape is
//         return new Circle(this)

// // Десь у клієнтському програмному коді.
//
//  ``

// // Базовий прототип.
// abstract class Shape is
//     field X: int
//     field Y: int
//     field color: string

//     // Звичайний конструктор.
//     constructor Shape() is
//         // ...

//     // Конструктор прототипа.
//     constructor Shape(source: Shape) is
//         this()
//         this.X = source.X
//         this.Y = source.Y
//         this.color = source.color

//     // Результатом операції клонування завжди буде об'єкт з
//     // ієрархії класів Shape.
//     abstract method clone(): Shape

// abstract class Shape {
//   int X;
//   int Y;
//   String color;

//   Shape(this.X, this.Y, this.color);

//   Shape clone();
// }

// // Конкретний прототип. Метод клонування створює новий об'єкт
// // поточного класу, передаючи до конструктора посилання на
// // власний об'єкт. Завдяки цьому, клонування виходить
// // атомарним — доки не виконається конструктор, нового об'єкта
// // ще не існує. Але як тільки конструктор завершено, ми
// // отримаємо завершений об'єкт-клон, а не порожній об'єкт, який
// // потрібно ще заповнити.
// class Rectangle extends Shape is
//     field width: int
//     field height: int

//     constructor Rectangle(source: Rectangle) is
//         // Виклик батьківського конструктора потрібен, щоб
//         // скопіювати потенційні приватні поля, оголошені в
//         // батьківському класі.
//         super(source)
//         this.width = source.width
//         this.height = source.height

//     method clone(): Shape is
//         return new Rectangle(this)

// class Circle extends Shape is
//     field radius: int

//     constructor Circle(source: Circle) is
//         super(source)
//         this.radius = source.radius

//     method clone(): Shape is
//         return new Circle(this)

// class Rectangle extends Shape {
//   int width;
//   int height;

//   Rectangle(int X, int Y, String color, this.height, this.width)
//       : super(X, Y, color);
//   @override
//   Shape clone() {
//     var clone = Rectangle(X, Y, color, height, width);
//     return clone;
//   }
// }

// class Circle extends Shape {
//   int radius;

//   Circle(int X, int Y, String color, this.radius) : super(X, Y, color);

//   @override
//   Shape clone() {
//     var clone = Circle(X, Y, color, radius);
//     return clone;
//   }

//   @override
//   String toString() {
//     return '$X, $Y, $color, $radius';
//   }
// }
