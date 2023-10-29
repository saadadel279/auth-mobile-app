import 'package:auth_app/featchers/regestration/presentation/view/widgets/Custom_TextField.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/Custom_button.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/RememberAndForget.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/have_account.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/head_of_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HeadofScreen(
              image: 'assets/images/Rectangle.png',
              screenTitle: 'Register Screen ',
              screenDescription: 'Create new account'),
          CustomTextField(
              onChanged: (p0) {},
              title: 'username',
              icon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.close))),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
              onChanged: (p0) {},
              title: 'Email',
              icon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.close))),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
              onChanged: (p0) {},
              title: 'Password',
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_sharp))),
          const SizedBox(
            height: 10,
          ),
          const RememberAndForget(
            ActionName: 'Have a problem?',
          ),
          CustomActionButton(
              actionLable: 'Register',
              onTap: () {},
              color: const Color(0xff007BFF)),
          const SizedBox(
            height: 15,
          ),
          Questionbar(
              onTap: () {
                Navigator.pop(context);
              },
              question: 'Already have an account?',
              actionName: 'Log in')
        ],
      ),
    );
  }
}
