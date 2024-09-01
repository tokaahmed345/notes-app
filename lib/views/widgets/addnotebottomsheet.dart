import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom-textfield.dart';
import 'package:noteapp/views/widgets/customappbar.dart';
import 'package:noteapp/views/widgets/custombutton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    //any change of border of container not effect on bottom sheet so you should change borderfrom shape in show bottom sheet
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
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
