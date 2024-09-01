import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.ontap});
   final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: PKColor, borderRadius: BorderRadius.circular(8)),
        child: const Center(
            child: Text(
          "Add",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
    );
  }
}
