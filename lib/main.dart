import 'package:flutter/material.dart';
import 'package:oinkvault/bottom_menu_bar.dart';
import 'package:oinkvault/calculator_page.dart';
import 'package:oinkvault/categories_page.dart';
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
        home: MainScreenDisplay()); // calls the homepage
  }
}

class MainScreenDisplay extends StatefulWidget {
  const MainScreenDisplay({super.key});

  @override
  State<MainScreenDisplay> createState() => _MainScreenDisplayState();
}

class _MainScreenDisplayState extends State<MainScreenDisplay> {
  int _selectedIndex = 0; //set the default index

  final List _pages = [
    HomePage(), // index 0
    CategoriesPage(), // index 1
    (),
    CalculatorPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; //updates _selectedIndex value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], //change the page based on index
      bottomNavigationBar: BottomMenuBar(
        selectedIndex: _selectedIndex, // passes the selected index
        onItemTappped: _onItemTapped, // passes the function to update index
      ),
    );
  }
}
