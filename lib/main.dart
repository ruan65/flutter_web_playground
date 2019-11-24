import 'package:flutter/material.dart';
import 'package:flutter_web_playground/service_locator.dart';
import 'package:flutter_web_playground/views/home/home_view.dart';
import 'package:flutter_web_playground/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter web',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Open Sans',
              )),
      home: LayoutTemplate(),
    );
  }
}
