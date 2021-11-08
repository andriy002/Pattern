abstract class Action {
  int _priority;
  Action? _nextNotifier;

  Action(this._priority);

  set setNextNotifier(Action setNextNotifier) =>
      _nextNotifier = setNextNotifier;

  void notifyManager(String message, int level) {
    if (level >= _priority) {
      write(message);
    }
    if (_nextNotifier != null) {
      _nextNotifier?.notifyManager(message, level);
    }
  }

  void write(String message);
}

class Prioritety {
  static const int smallAction = 1;
  static const int action = 2;
  static const int superAction = 3;
}

class SiteNotifier extends Action {
  SiteNotifier(int priority) : super(priority);

  @override
  void write(String message) => print('Baner in site: $message');
}

class EmailNotifier extends Action {
  EmailNotifier(int priority) : super(priority);

  @override
  void write(String message) => print('Sending email: $message');
}

class SmsNotifier extends Action {
  SmsNotifier(int priority) : super(priority);

  @override
  void write(String message) => print('Sending SMS to client: $message');
}
