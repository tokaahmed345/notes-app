// import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/cubits/addnotecubit/addnotestate.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
AddNoteCubit(): super(AddNoteInitial());
  addnote(NoteModel note) async {
    //الى هخزنه فلى الهايف
    emit(AddNoteLoading());
    try {
      var boxnote = Hive.box<NoteModel>(
          knotesbox); //store data in box determine type of data which write notemodel
      emit(AddNoteSucecc());

      await boxnote.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
