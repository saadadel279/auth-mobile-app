import 'package:flutter/material.dart';

class HeadofScreen extends StatelessWidget {
  const HeadofScreen({
    super.key,
    required this.image,
    required this.screenTitle,
    required this.screenDescription, 
  });

  final String image;
  final String screenTitle;
  final String screenDescription;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                screenTitle,
                style: const TextStyle(fontSize: 18, color: Color(0xff808194)),
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Frame.png'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
              Image.asset(image),
         
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            screenDescription,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
