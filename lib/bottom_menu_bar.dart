import 'package:flutter/material.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({super.key});

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      indicatorColor: Color(0xFFE1CFB9),
      selectedIndex: _selectedIndex,
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
