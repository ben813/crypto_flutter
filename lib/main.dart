import 'package:crypto_flutter/data/dependency_injection.dart';
import 'package:crypto_flutter/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  Injector.configure(Flavor.PROD);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}
