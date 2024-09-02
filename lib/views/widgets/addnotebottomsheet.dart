import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/addnotecubit/addnotecubit.dart';
import 'package:noteapp/cubits/addnotecubit/addnotestate.dart';
import 'package:noteapp/views/widgets/addnoteform.dart';
import 'package:noteapp/views/widgets/custom-textfield.dart';
import 'package:noteapp/views/widgets/customappbar.dart';
import 'package:noteapp/views/widgets/custombutton.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    //any change of border of container not effect on bottom sheet so you should change borderfrom shape in show bottom sheet
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print("error:${state.errormessage}");
            }

            if (state is AddNoteSucecc) {
              Navigator.pop(context);
            }
          },
          
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading?true:false,
              child: SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
////create blocovserver to check is state is ok or not
//single should be under of modalhud