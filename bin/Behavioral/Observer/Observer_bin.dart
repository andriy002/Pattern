import 'Observer.dart';

void main() {
  NewsFeed newsFeed = NewsFeed();

  Observer user = Subscriber('Ivan');
  Observer user2 = Subscriber('Vasil');
  newsFeed.addNews('news1');
  newsFeed.addNews('news2');
  newsFeed.addNews('news3');

  newsFeed.addObserver(user);
  newsFeed.addObserver(user2);
  newsFeed.removeNews('news1');
}
