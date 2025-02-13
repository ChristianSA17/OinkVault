import 'package:flutter/material.dart';
import 'package:oinkvault/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            colorScheme: ColorScheme.dark(
              surface: Colors.grey.shade900, // sets the apps background color
            )),
        debugShowCheckedModeBanner: false,
        home: HomePage()); // calls the homepage
  }
}
