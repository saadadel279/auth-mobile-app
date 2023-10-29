import 'package:flutter/material.dart';

class Questionbar extends StatelessWidget {
  const Questionbar({super.key, required this.onTap, required this.question, required this.actionName});
final void Function()? onTap;
final String question;
final String actionName;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 21),
      child: Row(
        
        children: [
           Text(question,style: const TextStyle(
            fontSize: 15
          ),),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: onTap,
            child:  Text(actionName,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))
        ],
      ),
    );
  }
}