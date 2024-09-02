import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/cubits/addnotecubit/addnotecubit.dart';
import 'package:noteapp/cubits/readnotescubit/readnotecubit.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:noteapp/simpleblocovserve.dart';
import 'package:noteapp/views/notesview.dart';

// import 'package:noteapp/views/notesview.dart';
void main() async {
  Bloc.observer = SimpleBlocObserve();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotesbox); //store data in box
  //  كده بقول الهايف انها بتتعامل مع نوت مودا  بعد انشاء الادابتر
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(//cubit still open till app open so we should use it in specific area that use cubit in it
    //   providers: [
    //     BlocProvider(
    //         create: (context) =>
    //             AddNoteCubit()), //allowed to all screens in app
    //   ],
    //   child: MaterialApp(
    return BlocProvider(
      create: (context) =>ReadNotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
          useMaterial3: false,
        ),
        routes: {
          NotesView.id: (context) => NotesView(),
        },
        initialRoute: NotesView.id,
      ),
    );
  }
}
//hive use in  app with dart or flutter  to use by flutter we use extention flutter hive and some of tools generate  code as build runner to use it should use hive generator to generate code
//hive store primitive data when you want to store object in hive you should create  hive adapter contain object to know hive to store object
