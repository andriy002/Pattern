class Project {
  String? _version;

  Save save() => Save(_version ??= '0.0');

  void setVersion(String version) {
    this._version = version;
  }

  void load(Save save) {
    _version = save.getVersion;
  }

  @override
  String toString() => 'Project: \n version: $_version  ';
}

class Save {
  final String _version;

  get getVersion => _version;

  Save(this._version);
}

class GithubRepo {
  Save? _save;

  get getSave => _save;

  set setSave(Save setSave) => _save = setSave;
}
