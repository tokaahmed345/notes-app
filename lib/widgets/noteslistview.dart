import 'package:flutter/material.dart';
import 'package:noteapp/widgets/customnoteitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List data = const [
   Color(0xffFFCC80),
   Color.fromARGB(255, 215, 248, 150),
   Color.fromARGB(255, 52, 117, 228),
   Color.fromARGB(255, 216, 92, 133),
   Color.fromARGB(255, 169, 77, 186),
   Color(0xffFFCC80),
   Color.fromARGB(255, 215, 248, 150),
   Color.fromARGB(255, 52, 117, 228),
   Color.fromARGB(255, 216, 92, 133),
   Color.fromARGB(255, 169, 77, 186),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: data.length,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: NoteItem(color: data[index],),
        );
      }),
    );
  }
}
