
import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: PKColor,
decoration: InputDecoration(
  hintText: 'Title',
  hintStyle: TextStyle(color: PKColor),
  border: buildborder(),
enabledBorder: buildborder(),
focusedBorder:buildborder(PKColor),
)

    );
  }

OutlineInputBorder buildborder([color]){
  return OutlineInputBorder(
    borderSide: BorderSide(color: color??Colors.white),
    borderRadius: BorderRadius.circular(8));

}
}

