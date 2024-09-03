import 'package:flutter/material.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:noteapp/views/widgets/customnoteitem.dart';
import 'package:noteapp/views/widgets/editnote.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNote(note: note,),
    );
  }
}
