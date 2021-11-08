class FireBase {
  void insert() => print('insert data');
  void remove() => print('remove data');
  void update() => print('update data');
}

class DartApp {
  void saveObj() => print('Save Dart obj...');
  void removeObj() => print('Remove Dart obj...');
  void updateObj() => print('Update Dart obj...');
}

class DartAdapter extends DartApp implements FireBase {
  @override
  void insert() => saveObj();
  @override
  void remove() => removeObj();
  @override
  void update() => updateObj();
}
