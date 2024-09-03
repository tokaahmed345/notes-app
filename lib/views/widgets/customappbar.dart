import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/views/widgets/customsearchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.icon,required this.title,this.onPressed});
  final String title;
  final IconData icon;
  final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(
          flex: 1,
        ),
        CustomSearchIcon
        
        
        (icon: icon,onPressed: onPressed,),
      ],
    );
  }
}

