import 'package:noteapp/models/notemodel.dart';

class ReadNotesStates {}

class InitialState extends ReadNotesStates {}

class SuccesReadNotes extends ReadNotesStates {
  List<NoteModel> listnot;

  SuccesReadNotes(this.listnot);
}

class FailuireReadNotes extends ReadNotesStates {
  final String errormessage;

  FailuireReadNotes(this.errormessage);
}

class LoadingNotes extends ReadNotesStates {}
