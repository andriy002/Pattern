abstract class Program {
  OsDesign _os;

  Program(OsDesign this._os);

  void runProgram();
}

abstract class OsDesign {
  void runOsDesign();
}

class iOS implements OsDesign {
  @override
  void runOsDesign() => print('iOS design ');
}

class Android implements OsDesign {
  @override
  void runOsDesign() => print('Android design');
}

class AppleOs extends Program {
  AppleOs(OsDesign _os) : super(_os);

  @override
  void runProgram() {
    print('Apple os run');
    _os.runOsDesign();
  }
}

class AndroidOs extends Program {
  AndroidOs(OsDesign _os) : super(_os);

  @override
  void runProgram() {
    print('Android os run');
    _os.runOsDesign();
  }
}
