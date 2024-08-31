import 'package:flutter/material.dart';
import 'package:noteapp/views/notesview.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'
      
      ),
      routes: {
        NotesView.id: (context) => NotesView(),
      },
      initialRoute: NotesView.id,
    );
  }
}
