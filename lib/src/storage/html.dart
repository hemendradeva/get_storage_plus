import 'dart:async';
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
// Conditional import: use real `dart:html` on web, otherwise use a small stub
import 'html_stub.dart' if (dart.library.html) 'html_web.dart' as html;
import '../value.dart';

class StorageImpl {
  StorageImpl(this.fileName, [this.path]);
  dynamic get localStorage => html.window.localStorage;

  final String? path;
  final String fileName;

  ValueStorage<Map<String, dynamic>> subject =
  ValueStorage<Map<String, dynamic>>(<String, dynamic>{});

  void clear() {
    localStorage.removeItem(fileName);
    subject.value.clear();

    subject
      ..value.clear()
      ..changeValue("", null);
  }

  Future<bool> _exists() async {
    return localStorage[fileName] != null;
  }

  Future<void> flush() {
    return _writeToStorage(subject.value);
  }

  T? read<T>(String key) {
    return subject.value[key] as T?;
  }

  T getKeys<T>() {
    return subject.value.keys as T;
  }

  T getValues<T>() {
    return subject.value.values as T;
  }

  Future<void> init([Map<String, dynamic>? initialData]) async {
    subject.value = initialData ?? <String, dynamic>{};
    if (await _exists()) {
      await _readFromStorage();
    } else {
      await _writeToStorage(subject.value);
    }
    return;
  }

  void remove(String key) {
    subject
      ..value.remove(key)
      ..changeValue(key, null);
    //  return _writeToStorage(subject.value);
  }

  void write(String key, dynamic value) {
    subject
      ..value[key] = value
      ..changeValue(key, value);
    //return _writeToStorage(subject.value);
  }

  // void writeInMemory(String key, dynamic value) {

  // }

  Future<void> _writeToStorage(Map<String, dynamic> data) async {
    localStorage[fileName] = json.encode(subject.value);
  }

  Future<void> _readFromStorage() async {
    // Read the stored value directly by filename (avoids using Storage.key)
    final value = html.window.localStorage[fileName];
    if (value != null) {
      subject.value = json.decode(value) as Map<String, dynamic>;
    }

    // If no value found or subject is empty, write default data
    if (subject.value.isEmpty) {
      await _writeToStorage(<String, dynamic>{});
    }
  }
}

extension FirstWhereExt<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}