abstract class Observer {
  void handleIvent(List<String> news);
}

abstract class Obsorved {
  void addObserver(Observer observer);

  void removeObserver(Observer observer);

  void notifyObservers();
}

class Subscriber implements Observer {
  String _name;

  Subscriber(this._name);

  @override
  void handleIvent(List<String> news) =>
      print('Dear $_name.\n New news for you: \n $news');
}

class NewsFeed implements Obsorved {
  List<String> _news = [];
  List<Observer> _subscribes = [];

  void addNews(String news) {
    this._news.add(news);
    notifyObservers();
  }

  void removeNews(String news) {
    this._news.remove(news);
    notifyObservers();
  }

  @override
  void addObserver(Observer observer) => this._subscribes.add(observer);

  @override
  void notifyObservers() {
    for (var observer in _subscribes) {
      observer.handleIvent(this._news);
    }
  }

  @override
  void removeObserver(Observer observer) => this._subscribes.remove(observer);
}
