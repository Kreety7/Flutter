import 'package:instagram/modules/extra/home_page.dart';
//import 'package:instagram/identity_card.dart';//
import 'package:instagram/modules/auth/login_screen.dart';
import 'package:instagram/modules/extra/monday_class.dart';
import 'package:instagram/modules/auth/signup_screen.dart';


class AppRoute {
  AppRoute._();

  //static const String identityCard = '/identityCard';
  static const String login = '/login';
  static const String home = '/home';
  static const String mondayClass = '/mondayClass';
  static const String signup = '/signup';


  static getAppRoutes() => {
    //identityCard: (context) => const IdentityCard(),//
    login: (context) => const LoginScreen(),
    home: (context) => const HomePage(),
    mondayClass: (context) => const MondayClass(),
    signup: (context) => const SignupScreen(),

  };
}