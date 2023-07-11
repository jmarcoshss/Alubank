import 'package:alubank/screens/home_screen.dart';
import 'package:alubank/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: MyTheme,
      home: home_screen(),
    );
  }
}
