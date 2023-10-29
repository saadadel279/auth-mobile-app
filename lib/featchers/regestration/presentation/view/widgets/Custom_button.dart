import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key, required this.actionLable, required this.onTap, required this.color});
  final String actionLable;
  final void Function() onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          decoration:  BoxDecoration(color:color,
          borderRadius: BorderRadius.circular(5)),
          child:  Text(actionLable,style: const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),),
          
        ),
      ),
    );
  }
}