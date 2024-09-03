// import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/cubits/addnotecubit/addnotestate.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial()); //handel any change when add
  Color color = Color(0xffFE5F55);

  addnote(NoteModel note) async {
    note.color = color.value;

    //الى هخزنه فلى الهايف
    emit(AddNoteLoading());
    try {
      var boxnote = Hive.box<NoteModel>(
          knotesbox); //store data in box determine type of data which write notemodel

      await boxnote.add(note);
      emit(AddNoteSucecc());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
