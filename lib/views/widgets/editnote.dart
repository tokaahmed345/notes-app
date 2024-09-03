import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/cubits/readnotescubit/readnotecubit.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:noteapp/views/widgets/custom-textfield.dart';
import 'package:noteapp/views/widgets/customappbar.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
                            BlocProvider.of<ReadNotesCubit>(context).fetchnotes();

              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
              //  onSaved: ,//مش هينفع اون سيفيد عشان مفيش فاليديت فاستخدم الاون تينج
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              subtitle = value;
            },
            hint: widget.note.subtitle,
            maxline: 5,
          )
        ],
      ),
    );
  }
}
