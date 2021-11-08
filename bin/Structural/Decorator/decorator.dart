abstract class Program {
  String showProgram();
}

class SimpleProgram implements Program {
  @override
  String showProgram() => ' Show product \n Buy product \n';
}

abstract class ProgramDecorator implements Program {
  late Program program;

  ProgramDecorator(this.program);

  @override
  String showProgram() => program.showProgram();
  @override
  String toString() => showProgram();
}

class RegularProgram extends ProgramDecorator {
  RegularProgram(Program program) : super(program);

  String user() => ' Create user \n Show promotional product \n';

  @override
  String showProgram() => super.showProgram() + user();
}

class ProProgram extends ProgramDecorator {
  ProProgram(Program program) : super(program);

  String addFilter() => ' Search for products by filter';

  @override
  String showProgram() => super.showProgram() + addFilter();
}
