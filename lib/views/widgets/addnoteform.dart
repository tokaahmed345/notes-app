import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/addnotecubit/addnotecubit.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:noteapp/views/widgets/custom-textfield.dart';
import 'package:noteapp/views/widgets/custombutton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formstate = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formstate,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxline: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomButton(
            ontap: () {
              if (formstate.currentState!.validate()) {
                formstate.currentState!.save();
                var notemodel = NoteModel(
                    color: Colors.blue.value
                    ,
                    date: DateTime.now().toString(),
                    subtitle: subtitle!,
                    title: title!);
                BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 32,
          )
          //spacer with scroll notallowed scroll shrank and spacer expand
        ],
      ),
    );
  }
}
