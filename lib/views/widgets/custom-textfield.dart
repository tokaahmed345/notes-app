import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint,this.maxline=1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
        cursorColor: PKColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: PKColor),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(PKColor),
        ));
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.circular(8));
  }
}
