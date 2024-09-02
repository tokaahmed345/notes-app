import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/readnotescubit/readnotecubit.dart';
import 'package:noteapp/views/widgets/addnotebottomsheet.dart';
import 'package:noteapp/views/widgets/notesviewbody.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(//مش هيفؤق احط البروفايدر هنا او على الماتريال عشان كده كده النوت فيو مفتوحه طول التطبيق
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled:
                    true, //don'nt have build method so we should re run app again to show changes
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: Icon(Icons.add),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
