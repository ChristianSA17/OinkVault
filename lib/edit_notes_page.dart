import 'package:flutter/material.dart';

class EditNotesPage extends StatefulWidget {
  const EditNotesPage({super.key});

  @override
  State<EditNotesPage> createState() => _EditNotesPageState();
}

class _EditNotesPageState extends State<EditNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      body: Text('Add Notes Page'),
    );
  }
}
