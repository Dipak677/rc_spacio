## rc_spacio - Flexible Spacing Widgets for Flutter

[![pub package](https://img.shields.io/pub/v/rc_spacio.svg)](https://pub.dev/packages/rc_spacio)

<p style="display: flex; gap: 10px;">
    <img src="https://raw.githubusercontent.com/Dipak677/rc_spacio/refs/heads/main/rc_spacio_example.png?raw=true" height="600px">
</p>

---

```rc_spacio``` is a Flutter package that helps you easily manage the space between widgets in your app. It offers customizable column and row widgets, allowing you to adjust the space around and inside the widgets. This makes it simpler to create clean, well-spaced layouts in your Flutter projects.

## Installation 🚀

First, we need to add rc_spacio to our pubspec.yaml file.

Install the package by running the following command from the project root:

```bash
flutter pub add rc_spacio
```

## Features
```SpacioColumn``` : A customizable column widget that allows you to specify top, bottom, and internal spacing between its children.

```SpacioRow``` : A customizable row widget that allows you to specify left, right, and internal spacing between its children.


## Usage 🧑‍💻

Now that we have successfully installed rc_spacio, we can import rc_spacio in main.dart.

```dart
import 'package:rc_spacio/rc_spacio.dart';
```

## Example
### SpacioColumn

```SpacioColumn``` allows you to define top, bottom, and internal spacing between its children.


```dart
import 'package:flutter/material.dart';
import 'package:rc_spacio/rc_spacio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SpacioColumn(
        topSpacing: 20.0, // Space at the top of the column
        bottomSpacing: 15.0, // Space at the bottom of the column
        internalSpacing: 10.0, // Space between each child in the column
        children: [
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
        ],
      ),
    );
  }
}
```
##### Parameters:

```topSpacing``` : The space to be applied at the top of the column. Default is ```0.0```.

```bottomSpacing``` : The space to be applied at the bottom of the column. Default is ```0.0```.

```internalSpacing``` : The space to be applied between each child widget in the column. Default is ```0.0```.

```children``` : The list of widgets to be displayed in the column.

### SpacioRow

```SpacioRow``` allows you to define left, right, and internal spacing between its children.


```dart
import 'package:flutter/material.dart';
import 'package:rc_spacio/rc_spacio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SpacioRow(
        leftSpacing: 20.0, // Space at the left of the row
        rightSpacing: 15.0, // Space at the right of the row
        internalSpacing: 10.0, // Space between each child in the row
        children: [
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
        ],
      ),
    );
  }
}
```
##### Parameters:

```leftSpacing``` : The space to be applied to the left of the row. Default is ```0.0```.

```rightSpacing``` : The space to be applied to the right of the row. Default is ```0.0```.

```internalSpacing``` : The space to be applied between each child widget in the row. Default is ```0.0```.

```children``` : The list of widgets to be displayed in the row.


## Test Cases

This package includes comprehensive test cases to ensure correct spacing behavior.

```SpacioColumn``` : Test cases ensure the correct top, bottom, and internal spacing is applied.

```SpacioRow``` : Test cases ensure the correct left, right, and internal spacing is applied.


## License

This package is licensed under the BSD 3-Clause License. See the [LICENSE](https://opensource.org/license/bsd-3-clause) file for more information.
