import 'package:flutter/material.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar(
      {super.key,
      required this.selectedIndex,
      required this.onItemTappped}); //Gets updated selected index value and the onItemTapped function from the MainScreenDisplay

  final int selectedIndex; //stores selected index from MainScreenDisplay
  final Function(int) onItemTappped; //stores function from MainScreenDisplay

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: widget
          .onItemTappped, //triggers the onItemTapped function in the main.dart
      indicatorColor: Color(0xFFE1CFB9),
      selectedIndex: widget.selectedIndex, //updates the higlighted active tab
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.category),
          icon: Icon(Icons.category_outlined),
          label: 'Categories',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.notes),
          icon: Icon(Icons.notes_outlined),
          label: 'Notes',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.calculate),
          icon: Icon(Icons.calculate_outlined),
          label: 'Calculator',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.settings),
          icon: Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
    );
  }
}
