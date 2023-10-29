import 'package:flutter/material.dart';

class RememberAndForget extends StatefulWidget {
   const RememberAndForget({super.key, required this.ActionName});

  @override
  State<RememberAndForget> createState() => _RememberAndForgetState();

  final String ActionName;
}


class _RememberAndForgetState extends State<RememberAndForget> {
  bool? checkboxvalue=false;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: checkboxvalue, onChanged: (value){
              setState(() {
                checkboxvalue=value;
              });
              },),
               const Text('Remember me',style: TextStyle(
            fontWeight: FontWeight.bold
          ),)
            ],
          ),
    
           Padding(
            padding: const EdgeInsets.only(right:15),
            child: Text(widget.ActionName,style: const TextStyle(
              fontWeight: FontWeight.bold
            ),),
          )
        ],
    
        
      ),
    );
  }
}