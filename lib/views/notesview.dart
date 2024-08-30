import 'package:flutter/material.dart';
import 'package:noteapp/widgets/notesviewbody.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NotesViewBody() ,
    );
  }
}
