import 'package:flutter/material.dart';
import 'package:gkwithakhtarmalik/Helper/widthHeight.dart';

class ViewCourses extends StatefulWidget {
  const ViewCourses({super.key});

  @override
  State<ViewCourses> createState() => _ViewCoursesState();
}

class _ViewCoursesState extends State<ViewCourses> {
  @override
  Widget build(BuildContext context) {
    final height = getScreenHeight(context);

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.0123,
          ),
          const Text(
            "View Courses",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
