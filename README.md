<p align="center">
  <img src="your-image-url-here.png" alt="Get Storage Plus Dev Logo" width="200" style="border-radius: 50%;">
</p>

# 🚀 Get Storage Plus Dev

A fast, lightweight, and entirely synchronous key-value storage solution for Flutter applications, built on the foundations of the legendary `get_storage` but with massive enhancements for the latest Flutter versions, **especially Flutter Web**.

Written entirely in Dart, seamlessly integrated with the **GetX framework**, `get_storage_plus` provides high-performance local storage with automatic, reliable disk backup after every single read/write operation.

## 🛠 Why `get_storage_plus`?

This package was created specifically to address critical bottlenecks and limitations with the original `get_storage`, particularly when building and deploying modern Flutter applications.

### 🌐 The Flutter Web Challenge & Our Solution

While developing Flutter Web applications, we found the standard solutions failed during crucial continuous integration and deployment pipelines, specifically with **Jenkins builds** and **Docker deployments**. The `get_storage_plus` package provides a **Flutter-first enhancement**, fixing the underlying web compatibility and storage access issues that caused these pipelines to fail.

We are proud to confirm that **`get_storage_plus` now enables successful, reliable Jenkins and Docker deployments** for your Flutter Web apps, providing the stable session and cache management that developers demand.

### Supports All Major Platforms

Android
iOS
Web (With Major Enhancements!)
Windows
macOS
Linux
Fuchsia

## ✨ Key Features

-   **Ultra-fast in-memory storage**
-   **Automatic persistent disk backup** after each write.
-   **Optimized for Flutter Web**: No more pipeline failures!
-   **Fully Compatible** with the latest Flutter versions.
-   **Improved HTML/Web storage** compatibility.
-   **Synchronous read/write operations** for clean, declarative code.
-   **Lightweight and easy to use**: Zero boilerplate.
-   **Seamless GetX integration**.
-   **No native platform code** required.

## 📦 Supported Data Types

Store all your essential data types with ease:

-   `String`
-   `int`
-   `double`
-   `bool`
-   `Map`
-   `List`

## 🚀 Flutter Web & CI/CD Enhancements

This package includes updates and fixes designed specifically for professional, high-scale Flutter Web development:

-   **Jenkins & Docker Build Fixes**: Fully compatible and tested pipelines.
-   **Improved HTML File Support** for storage.
-   **Better Browser Local Storage Handling**.
-   **Faster Web State Persistence**.
-   **Reduced Dart Web Storage Issues**.
-   **Improved Compatibility** with latest Flutter Web rendering engines.
-   **Stable Session and Cache Management**.

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  get_storage_plus: latest_version
