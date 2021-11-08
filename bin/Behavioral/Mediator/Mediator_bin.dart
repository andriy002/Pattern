import 'Mediator.dart';

void main() {
  SimpleTextChat chat = SimpleTextChat();

  User admin = Admin(chat, 'admin');
  User user1 = SimpleUser(chat, 'user1');
  User user2 = SimpleUser(chat, 'user2');

  chat.setAdmin = admin;
  chat.addUserToChat(user1);
  chat.addUserToChat(user2);

  user1.sendMessage('hello');
  print('*' * 100);
  admin.sendMessage('hello i am admin');
}
