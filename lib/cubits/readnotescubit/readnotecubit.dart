import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/cubits/readnotescubit/readnotesstate.dart';
import 'package:noteapp/models/notemodel.dart';

class ReadNotesCubit extends Cubit<ReadNotesStates> {
  ReadNotesCubit() : super(InitialState());
  List<NoteModel>? noteslist;
  fetchnotes() {
    // try {
    var notes = Hive.box<NoteModel>(knotesbox);
    noteslist = notes.values.toList();
    emit(SuccessState());
    //emit(SuccesReadNotes(noteslist));
    // } on Exception catch (e) {
    //   // emit(FailuireReadNotes(e.toString()));
    // }
  }
}
//remove try & catch so that data never fetch from internet so there is no failure