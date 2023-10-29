import 'package:auth_app/featchers/regestration/presentation/view/screens/RegisterScreen.dart';
import 'package:auth_app/featchers/regestration/presentation/view/screens/loginScreen.dart';
import 'package:auth_app/featchers/regestration/presentation/view/screens/profileScreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kRegisterScreen = '/RegisterScreen';
  static const kProfileScreen = '/ProfileScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: kRegisterScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: kProfileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
     
    ],
  );
}