import 'package:auth_app/featchers/regestration/presentation/view/widgets/Custom_button.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/ProfileDataShow.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/head_of_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HeadofScreen(
              image: 'assets/images/Rectangle.png',
              screenTitle: 'Profile Screen',
              screenDescription: 'INRERN2GROW'),
          const ProfileDataShow(
            title: 'username',
          ),
          const SizedBox(
            height: 12,
          ),
          const ProfileDataShow(
            title: 'Email',
          ),
          const SizedBox(
            height: 12,
          ),
          const ProfileDataShow(
            title: 'Gender',
          ),
          const SizedBox(
            height: 12,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomActionButton(
            actionLable: 'log out',
            color: Colors.red,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
