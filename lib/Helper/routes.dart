import 'package:flutter/material.dart';
import 'package:gkwithakhtarmalik/views/coursespage.dart';
import 'package:gkwithakhtarmalik/views/homepage.dart';
import 'package:gkwithakhtarmalik/views/quizespage.dart';
import 'package:gkwithakhtarmalik/views/signinpage.dart';
import 'package:gkwithakhtarmalik/views/signuppage.dart';
import 'package:gkwithakhtarmalik/views/videocconferencepage.dart';
import '../views/splashScreen.dart';

class Routes {
  static const String splash = '/';
  static const String signup = '/signup';
  static const String signin = '/signin';
  static const String home = '/home';
  static const String course = '/course';
  static const String quiz = '/quiz';
  static const String videoconference = '/videoconference';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case signin:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case course:
        return MaterialPageRoute(builder: (_) => const ViewCourses());
      case quiz:
        return MaterialPageRoute(builder: (_) => const QuizesPage());
      case videoconference:
        return MaterialPageRoute(builder: (_) => const VideoConference());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
