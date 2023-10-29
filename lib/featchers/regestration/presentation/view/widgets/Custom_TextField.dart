import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.onChanged,
    this.obscureText = false,
    required this.title,
     this.icon,
  }) : super(key: key);

  Function(String)? onChanged;
  bool? obscureText;
  final String title;
   Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Color(0xff808194)),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 44,
            child: TextFormField(
              obscureText: obscureText!,
              validator: (data) {
                if (data!.isEmpty) {
                  return ' Required';
                }
                return null;
              },
              onChanged: onChanged,
              decoration: InputDecoration(
                suffixIcon: icon,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xff808194),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xff808194),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
