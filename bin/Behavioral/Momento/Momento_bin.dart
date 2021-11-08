import 'Momento.dart';

void main() {
  Project project = Project();
  GithubRepo github = GithubRepo();

  project.setVersion('Version 1.0');
  print(project);
  print('Save current version on github....');
  github.setSave = project.save();
  print('*' * 100);
  print('Updating project to Version 1.1');
  project.setVersion('Version 1.1');
  print(project);
  print('*' * 100);
  print('Rolling back to Version  1.0 ');
  project.load(github.getSave);
  print(project);
}
