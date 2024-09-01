import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxline = 1, this.onSaved});
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        validator: (value) {
          //c hech if value exits or not
          if (value?.isEmpty ?? true) {
            return 'field is required ';
          }
        },
        maxLines: maxline,
        cursorColor: PKColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: PKColor),
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
