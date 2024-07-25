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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.012,
            ),
            Text(
              "View Quiz",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: height * 0.012),
            ),
          ],
        ),
      ),
    );
  }
}
