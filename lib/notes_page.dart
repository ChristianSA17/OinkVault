import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:oinkvault/edit_notes_page.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: OpenContainer(
        transitionDuration: const Duration(milliseconds: 500),
        transitionType: ContainerTransitionType.fadeThrough,
        openBuilder: (context, _) => const EditNotesPage(),
        closedShape: const CircleBorder(),
        closedColor: const Color(0xFFE1CFB9),
        closedElevation: 6.0,
        closedBuilder: (context, openContainer) {
          return FloatingActionButton(
            backgroundColor: Color(0xFFE1CFB9),
            foregroundColor: Color.fromARGB(255, 97, 82, 63),
            onPressed: openContainer,
            child: Icon(Icons.note_add_outlined),
          );
        },
      ),
    );
  }
}
