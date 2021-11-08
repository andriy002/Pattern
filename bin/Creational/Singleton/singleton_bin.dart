import 'singleton.dart';

void main() {
  Singleton singleton = Singleton('str');
  Singleton singletonTest = Singleton('test');

  print(identical(singleton, singletonTest));
  print(singleton.getInstance());
  print(singletonTest.getInstance());

  SingletonTwo singletonTwo = SingletonTwo.getInstance('str1');
  SingletonTwo singletonTwoTest = SingletonTwo.getInstance('test');

  print(singletonTwo);
  print(singletonTwoTest);
  print(identical(singletonTwo, singletonTwoTest));
}
