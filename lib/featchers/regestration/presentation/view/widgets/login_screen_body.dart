import 'package:auth_app/core/utils/app_router.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/Custom_TextField.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/Custom_button.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/RememberAndForget.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/have_account.dart';
import 'package:auth_app/featchers/regestration/presentation/view/widgets/head_of_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:0),
      child: ListView(
        children: [
          const HeadofScreen(
            image: 'assets/images/Rectangle.png',
            screenTitle: 'Log in screen',
            screenDescription: 'Log in to your account',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            onChanged: (p0) {},
            title: 'username',
            icon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.highlight_off_rounded)),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            title: 'password',
            onChanged: (data) {},
            icon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.remove_red_eye_sharp)),
          ),
          const SizedBox(height: 10,),
          const RememberAndForget(ActionName: 'Forgot password?'),
         const SizedBox(height: 10,),
          CustomActionButton(actionLable: 'Log in',onTap: () { 
                  GoRouter.of(context).push(AppRouters.kProfileScreen);
                },color:  const Color(0xff007BFF)),
           const SizedBox(height: 15,),
            Questionbar(question: 'Don’t have an account?',actionName: 'Register',onTap: () {GoRouter.of(context).push(AppRouters.kRegisterScreen);},),
        ],
      ),
    );
  }
}
