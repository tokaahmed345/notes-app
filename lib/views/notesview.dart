import 'package:flutter/material.dart';
import 'package:noteapp/widgets/addnotebottomsheet.dart';
import 'package:noteapp/widgets/notesviewbody.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
