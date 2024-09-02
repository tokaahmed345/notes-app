import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/cubits/readnotescubit/readnotesstate.dart';
import 'package:noteapp/models/notemodel.dart';

class ReadNotesCubit extends Cubit {
  ReadNotesCubit() : super(InitialState());

  fetchnotes() {
    try {
      var notes = Hive.box<NoteModel>(knotesbox);
     List<NoteModel>noteslist= notes.values.toList();
      emit(SuccesReadNotes(noteslist));
    } on Exception catch (e) {
      emit(FailuireReadNotes(e.toString()));
    }
  }
}
