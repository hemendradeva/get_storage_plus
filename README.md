# Get Storage Plus Dev

A fast, lightweight, and synchronous key-value storage solution for Flutter applications with enhanced Flutter Web support and compatibility for the latest Flutter versions.
Written entirely in Dart and seamlessly integrated with the GetX framework, get_storage_plus provides high-performance local storage with automatic disk backup after every operation.

## Supports:

Android
iOS
Web
Windows
macOS
Linux
Fuchsia

## ✨ Features

Ultra-fast in-memory storage
Automatic persistent disk backup
Optimized for Flutter Web
Supports latest Flutter versions
HTML/Web storage compatibility improvements
Synchronous read/write operations
Lightweight and easy to use
Seamless GetX integration
No native platform code required

## 📦 Supported Data Types

String
int
double
bool
Map
List

## 🚀 Flutter Web Enhancements 

This package includes updates specifically designed for Flutter Web applications:

Improved HTML file support
Better browser local storage handling
Faster web state persistence
Reduced Dart web storage issues
Improved compatibility with latest Flutter Web rendering
Stable session and cache management

## Installation

dependencies:
  get_storage_plus: latest_version

  
- Step 1:
  Add "Get" before your MaterialApp, turning it into GetMaterialApp

```dart
void main() => runApp(GetMaterialApp(home: Home()));
```

## 🛠 Initialization

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

## 💡 Basic Usage

final box = GetStorage();

box.write('name', 'Hemendra');
box.write('isLogin', true);

String? name = box.read('name');
bool isLogin = box.read('isLogin') ?? false;

## 🎯 Perfect For

Flutter Web applications
Admin dashboards
CRM/ERP systems
Offline storage
Authentication sessions
App settings and preferences
Lightweight local caching

## ❤️ Built With Flutter & GetX

Designed for developers who want simple, fast, and reliable local storage for modern Flutter applications.
