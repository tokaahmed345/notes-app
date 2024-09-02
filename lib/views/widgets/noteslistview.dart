import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/readnotescubit/readnotecubit.dart';
import 'package:noteapp/cubits/readnotescubit/readnotesstate.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:noteapp/views/widgets/customnoteitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  // final List data = const [
  //  Color(0xffFFCC80),
  //  Color.fromARGB(255, 215, 248, 150),
  //  Color.fromARGB(255, 52, 117, 228),
  //  Color.fromARGB(255, 216, 92, 133),
  //  Color.fromARGB(255, 169, 77, 186),
  //  Color(0xffFFCC80),
  //  Color.fromARGB(255, 215, 248, 150),
  //  Color.fromARGB(255, 52, 117, 228),
  //  Color.fromARGB(255, 216, 92, 133),
  //  Color.fromARGB(255, 169, 77, 186),
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesStates>(
        builder: (context, state) {
   List<NoteModel>notes=   BlocProvider.of<ReadNotesCubit>(context).noteslist??[];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          //  itemCount: state is SuccesReadNotes?state.listnot.length:0,
          padding: EdgeInsets.zero,
          //   itemCount: data.length,
         itemCount: notes.length,
         
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(note: notes[index],) //)color: data[index],),
                );
          },
        ),
      );
    });
  }
}
