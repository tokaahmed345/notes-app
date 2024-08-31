import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom-textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    //any change of border of container not effect on bottom sheet so you should change borderfrom shape in show bottom sheet
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
       CustomTextField(
      hint: 'Title',
      
        
       ),
       SizedBox(height: 16,),
       CustomTextField(hint: 'Content',maxline: 5,)
        ],
      ),
    );
  }
}

