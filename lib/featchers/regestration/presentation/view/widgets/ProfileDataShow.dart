import 'package:flutter/material.dart';

class ProfileDataShow extends StatelessWidget {
  const ProfileDataShow({super.key, required this.title});


final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 18, color: Color(0xff808194)),),
            ],
          ),
          const SizedBox(height: 4,),
           Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black54
              )
              ),
               child:const Padding(
                padding: EdgeInsets.only(top:11.0,left: 8),
                child: Text('intern2grow',style: TextStyle(fontSize: 15),),
              ) ,
            )
        ],
      ),
    );
  }
}