import 'Visitor.dart';

void main() {
  Project project = Project();

  Dev junior = JuniorDev();
  Dev senior = SeniorDev();

  project.beWritten(junior);
  project.beWritten(senior);
}
