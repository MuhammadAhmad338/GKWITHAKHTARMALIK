import 'package:flutter/material.dart';
import 'package:gkwithakhtarmalik/Helper/widthHeight.dart';

class QuizesPage extends StatefulWidget {
  const QuizesPage({super.key});

  @override
  State<QuizesPage> createState() => _QuizesPageState();
}

class _QuizesPageState extends State<QuizesPage> {
  @override
  Widget build(BuildContext context) {
    final height = getScreenHeight(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.012,
          ),
          const Text("View Quizess",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
