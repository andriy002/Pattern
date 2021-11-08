abstract class Developer {
  void writeCode();
}

abstract class Tester {
  void testCode();
}

abstract class ProjectManager {
  void manageProject();
}

abstract class ProjectTeamFactory {
  Developer getDev();
  Tester getTest();
  ProjectManager getPM();
}

class JavaDev implements Developer {
  @override
  void writeCode() => print('Write Java code...');
}

class QAtester implements Tester {
  @override
  void testCode() => print('Test Java code...');
}

class JavaPM implements ProjectManager {
  @override
  void manageProject() {
    print('Menage Java project...');
  }
}

class JavaTeamFactory implements ProjectTeamFactory {
  @override
  Developer getDev() => JavaDev();

  @override
  ProjectManager getPM() => JavaPM();

  @override
  Tester getTest() => QAtester();
}

class PhpDev implements Developer {
  @override
  void writeCode() => print('Write PHP code...');
}

class WebTester implements Tester {
  @override
  void testCode() => print('Test Php code...');
}

class WebPM implements ProjectManager {
  @override
  void manageProject() {
    print('Menage Web project...');
  }
}

class WebTeamFactory implements ProjectTeamFactory {
  @override
  Developer getDev() => PhpDev();

  @override
  ProjectManager getPM() => WebPM();

  @override
  Tester getTest() => WebTester();
}
