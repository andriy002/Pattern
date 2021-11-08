import 'abstract_factory.dart';

void main() {
  JavaTeamFactory javaProjectTeamFactory = JavaTeamFactory();
  Developer dev = javaProjectTeamFactory.getDev();
  Tester qa = javaProjectTeamFactory.getTest();
  ProjectManager pm = javaProjectTeamFactory.getPM();

  WebTeamFactory webProjectTeam = WebTeamFactory();
  Developer webDev = webProjectTeam.getDev();
  Tester webTest = webProjectTeam.getTest();
  ProjectManager webPm = webProjectTeam.getPM();

  print('Java team work....');
  print('-' * 100);
  dev.writeCode();
  qa.testCode();
  pm.manageProject();

  print('\n' 'Web team work...');
  print('-' * 100);
  webDev.writeCode();
  webTest.testCode();
  webPm.manageProject();
}
