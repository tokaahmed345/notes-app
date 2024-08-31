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
          showModalBottomSheet(//don'nt have build method so we should re run app again to show changes 
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
