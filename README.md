# Get Storage Plus

> 🚀 A modern, lightweight, and high-performance local key-value storage solution for Flutter, built as an enhanced alternative to `get_storage`.

`get_storage_plus` is a pure Dart storage library that provides **fast synchronous reads**, **automatic persistence**, and **improved Flutter Web compatibility** while remaining fully compatible with the GetX ecosystem.

Designed for modern Flutter applications, it delivers a simple API with reliable local storage across **Android, iOS, Web, Windows, macOS, Linux, and Fuchsia**.

---

<p align="center">

⭐ If you find this package useful, please consider giving it a star on GitHub.

</p>

---

## Why Get Storage Plus?

The original `get_storage` is an excellent lightweight storage solution. However, many developers have encountered compatibility issues with newer Flutter versions, especially on Flutter Web and during CI/CD deployments.

`get_storage_plus` extends the original concept with improvements focused on:

- Flutter Web stability
- Modern Flutter compatibility
- Better browser storage handling
- Reliable persistence
- Cleaner architecture
- Improved maintainability

It is designed to provide a smooth development experience without changing the familiar API.

---

# Features

✅ Lightning-fast synchronous storage

✅ Automatic persistence after every write

✅ Pure Dart implementation

✅ No native dependencies

✅ Flutter Web improvements

✅ Optimized browser storage

✅ Better compatibility with recent Flutter SDKs

✅ Seamless GetX integration

✅ Minimal memory footprint

✅ Simple and developer-friendly API

---

# Platform Support

| Platform | Supported |
|-----------|-----------|
| Android | ✅ |
| iOS | ✅ |
| Web | ✅ |
| Windows | ✅ |
| macOS | ✅ |
| Linux | ✅ |
| Fuchsia | ✅ |

---

# Supported Data Types

The package supports all commonly used Dart types.

```dart
String
int
double
bool
List
Map
Set
DateTime
dynamic
```

You can also store custom objects using JSON serialization.

---

# Installation

Add the dependency to your `pubspec.yaml`.

```yaml
dependencies:
  get_storage_plus: ^latest_version
```

Then install packages.

```bash
flutter pub get
```

---

# Getting Started

Import the package.

```dart
import 'package:get_storage_plus/get_storage_plus.dart';
```

Initialize storage before running your application.

```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(const MyApp());
}
```

---

# Create Storage Instance

```dart
final box = GetStorage();
```

---

# Write Data

```dart
box.write('username', 'Ahmed');

box.write('age', 25);

box.write('loggedIn', true);

box.write('profile', {
  "name": "Ahmed",
  "country": "India"
});
```

---

# Read Data

```dart
final username = box.read('username');

final age = box.read('age');

final loggedIn = box.read('loggedIn');

final profile = box.read('profile');
```

---

# Check if a Key Exists

```dart
box.hasData('username');
```

---

# Remove a Key

```dart
box.remove('username');
```

---

# Erase All Data

```dart
box.erase();
```

---

# Listen for Changes

```dart
box.listen(() {
  print("Storage Updated");
});
```

Listen to a specific key.

```dart
box.listenKey(
  'username',
  (value) {
    print(value);
  },
);
```

---

# Get All Keys

```dart
box.getKeys();
```

---

# Get All Values

```dart
box.getValues();
```

---

# Flutter Web Improvements

`get_storage_plus` includes several improvements specifically focused on Flutter Web development.

### Improved Browser Storage

Optimized local storage interactions for improved reliability.

### Better Modern Flutter Compatibility

Updated implementation to work smoothly with the latest Flutter SDK releases.

### Improved Web Performance

Optimized storage synchronization and browser persistence.

### Enhanced Stability

Designed to provide consistent behavior across supported browsers.

### Better Development Experience

Improved compatibility for Flutter Web applications during development and deployment workflows.

---

# CI/CD Friendly

The package has been designed with modern development workflows in mind and has been successfully used in environments including:

- Jenkins
- Docker
- GitHub Actions
- GitLab CI
- Azure DevOps

Its lightweight architecture makes it suitable for automated build and deployment pipelines.

---

# Performance

✔ Pure Dart implementation

✔ No platform channels

✔ Extremely low overhead

✔ Fast synchronous reads

✔ Efficient write operations

✔ Minimal memory usage

---

# Best Use Cases

Perfect for storing:

- Authentication tokens
- User preferences
- App settings
- Theme mode
- Language selection
- Cached API responses
- Session information
- Offline data
- Feature flags

---

# Example

```dart
final box = GetStorage();

box.write("theme", "dark");

String theme = box.read("theme");

print(theme);
```

---

# API Overview

| Method | Description |
|----------|-------------|
| write() | Store data |
| read() | Read data |
| remove() | Delete a key |
| erase() | Remove all stored data |
| hasData() | Check if key exists |
| listen() | Listen for storage updates |
| listenKey() | Listen for key updates |
| getKeys() | Get all keys |
| getValues() | Get all values |

---

# Migration

If you are already using `get_storage`, migrating is straightforward.

Replace:

```yaml
get_storage:
```

with

```yaml
get_storage_plus:
```

The API is intentionally designed to remain familiar, minimizing changes to existing code.

---

# Contributing

Contributions are welcome!

If you have ideas, bug fixes, or feature requests, feel free to open an issue or submit a pull request.

---

# License

This project is released under the MIT License.

---

# Acknowledgements

`get_storage_plus` builds upon the ideas introduced by the GetX ecosystem while focusing on improving compatibility and developer experience for modern Flutter applications.

Special thanks to the Flutter and GetX communities for their continued support and contributions.

---

<p align="center">

Made with ❤️ for the Flutter Community

</p>
