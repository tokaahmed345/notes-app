import 'package:flutter/material.dart';
import 'package:noteapp/widgets/notesviewbody.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body:NotesViewBody() ,
    );
  }
}
