import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
        primaryColor: Colors.greenAccent,
        brightness: Brightness.light,
      ),
      home: const Home(),
    );
  }
}
