import 'Template.dart';

void main() {
  Page home = HomePage();
  Page about = AboutPage();
  Page profile = ProfilePage();

  home.showPage();
  print('*' * 100);
  about.showPage();
  print('*' * 100);
  profile.showPage();
}
