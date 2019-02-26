// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.

import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new HomePage(),
    );
  }
}
