import 'package:flutter/material.dart';
import 'package:money_exchange/src/pages/homepage.dart';
import 'package:money_exchange/src/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ApplicationTheme(context),
      home: Homepage(),
    );
  }
}