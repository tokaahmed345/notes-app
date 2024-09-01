class AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucecc extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  String errormessage;
  AddNoteFailure(this.errormessage);
}

class AddNoteInitial extends AddNoteState {}
