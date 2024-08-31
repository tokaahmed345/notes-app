import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/views/widgets/customappbar.dart';
import 'package:noteapp/views/widgets/customnoteitem.dart';
import 'package:noteapp/views/widgets/noteslistview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
    Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


