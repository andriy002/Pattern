abstract class ProjectElement {
  void beWritten(Dev dev);
}

abstract class Dev {
  void createClass(ProjectClass projectClass);
  void createDataBase(DataBase dataBase);
  void createTest(Test task);
}

class ProjectClass implements ProjectElement {
  @override
  void beWritten(dev) {
    dev.createClass(this);
  }
}

class DataBase implements ProjectElement {
  @override
  void beWritten(dev) {
    dev.createDataBase(this);
  }
}

class Test implements ProjectElement {
  @override
  void beWritten(dev) {
    dev.createTest(this);
  }
}

class Project implements ProjectElement {
  List<ProjectElement> projectElement = [];

  Project() {
    this.projectElement = [ProjectClass(), DataBase(), Test()];
  }
  @override
  void beWritten(Dev dev) {
    for (var item in projectElement) {
      item.beWritten(dev);
    }
  }
}

class JuniorDev implements Dev {
  @override
  void createClass(ProjectClass projectClass) =>
      print('Writing poor class ...');

  @override
  void createDataBase(DataBase dataBase) => print('Drop database ...');

  @override
  void createTest(Test task) => print('Create realiable test ...');
}

class SeniorDev implements Dev {
  @override
  void createClass(ProjectClass projectClass) =>
      print('Rewrating class after junior ...');

  @override
  void createDataBase(DataBase dataBase) => print('Fixing data base ...');

  @override
  void createTest(Test task) => print('Creating reliable tesk');
}
