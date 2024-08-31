import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/widgets/customappbar.dart';
import 'package:noteapp/widgets/customnoteitem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(),
      NoteItem(),
      
        ],
      ),
    );
  }
}


