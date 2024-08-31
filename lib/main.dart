import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/views/notesview.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);//store data in box 

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
//hive use in  app with dart or flutter  to use by flutter we use extention flutter hive and some of tools generate  code as build runner to use it should use hive generator to generate code
//hive store primitive data when you want to store object in hive you should create  hive adapter contain object to know hive to store object