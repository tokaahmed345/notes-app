import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/customsearchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        Spacer(flex: 1,),
        CustomSearchIcon(),
      ],
    );
  }
}

