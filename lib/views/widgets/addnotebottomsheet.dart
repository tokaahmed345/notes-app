import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom-textfield.dart';
import 'package:noteapp/views/widgets/customappbar.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    //any change of border of container not effect on bottom sheet so you should change borderfrom shape in show bottom sheet
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
         CustomTextField(
        hint: 'Title',
        
          
         ),
         SizedBox(height: 16,),
         CustomTextField(hint: 'Content',maxline: 5,),
             SizedBox(height: 32,)
        ,     CustomButton(),
                     SizedBox(height:32,)
//spacer with scroll notallowed scroll shrank and spacer expand
          ],
        ),
      ),
    );
  }
}

