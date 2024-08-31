import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';
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
        Spacer(
          flex: 1,
        ),
        CustomSearchIcon(),
      
      
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: PKColor,borderRadius: BorderRadius.circular(8)),
   child: Center(child: Text("Add",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black),)),
   
   
    );
  }
}
