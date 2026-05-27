// A tiny stub that mimics the `window.localStorage` API used by the
// package so non-web platforms can compile. This does not persist between
// runs and is only meant to satisfy the analyzer and pub tooling.

class _LocalStorageStub {
  final Map<String, String> _data = {};

  int get length => _data.length;

  String? key(int index) => _data.keys.elementAt(index);

  String? operator [](String key) => _data[key];

  void operator []=(String key, String value) => _data[key] = value;

  void removeItem(String key) => _data.remove(key);
}

class _WindowStub {
  final _LocalStorageStub localStorage = _LocalStorageStub();
}

final _WindowStub window = _WindowStub();
