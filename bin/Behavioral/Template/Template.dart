abstract class Page {
  void showPage() {
    print('header');
    page();
    print('footer');
  }

  void page();
}

class HomePage extends Page {
  @override
  void page() => print('home');
}

class AboutPage extends Page {
  @override
  void page() => print('about');
}

class ProfilePage extends Page {
  @override
  void page() => print('profile');
}
