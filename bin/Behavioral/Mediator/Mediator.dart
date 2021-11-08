abstract class Chat {
  void sendMessage(String message, User user);
}

abstract class User {
  void sendMessage(String message);

  void getMessage(String message);
}

class Admin implements User {
  Chat _chat;
  String _name;

  Admin(this._chat, this._name);

  @override
  void getMessage(String message) =>
      print('Recipient: ${this._name} \n message: $message');

  @override
  void sendMessage(String message) => _chat.sendMessage(message, this);
}

class SimpleUser implements User {
  Chat _chat;
  String _name;
  SimpleUser(this._chat, this._name);

  // get getName => _name;

  // set setName(String set) => _name = set;

  @override
  void getMessage(String message) =>
      print('Recipient: ${this._name} \n message: $message');

  @override
  void sendMessage(String message) => _chat.sendMessage(message, this);
}

class SimpleTextChat implements Chat {
  User? _admin;
  List<User> _users = [];

  set setAdmin(User setAdmin) => _admin = setAdmin;

  void addUserToChat(User user) {
    this._users.add(user);
  }

  @override
  void sendMessage(String message, User user) {
    for (var u in _users) {
      if (u != user) {
        u.getMessage(message);
      }
    }
    _admin?.getMessage(message);
  }
}
