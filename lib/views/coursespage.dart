import 'package:flutter/material.dart';
import 'package:gkwithakhtarmalik/Helper/widthHeight.dart';

class ViewCourses extends StatefulWidget {
  const ViewCourses({super.key});

  @override
  State<ViewCourses> createState() => _ViewCoursesState();
}

class _ViewCoursesState extends State<ViewCourses> {
  int? hoveredIndex;
  final List<String> courseslist = [
    "assets/images/courses/course.jpg",
    "assets/images/courses/course1.jpg",
    "assets/images/courses/course2.jpg",
    "assets/images/courses/course3.jpg",
    "assets/images/courses/course4.jpg",
    "assets/images/courses/course5.jpg",
    "assets/images/courses/course6.jpg",
    "assets/images/courses/course7.jpg",
    "assets/images/courses/course8.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final height = getScreenHeight(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('View Courses'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(height * 0.02),
            child: PageView.builder(
              itemCount: courseslist.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      hoveredIndex = index;
                    });
                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: height * 0.02),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              courseslist[index],
                              fit: BoxFit.cover,
                            ),
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: hoveredIndex == index ? 1.0 : 0.0,
                              child: Container(
                                color: Colors.black54,
                                padding: EdgeInsets.all(height * 0.02),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Course ${index + 1}', // Example text
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.025,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Text(
                                        'Course Description goes here...', // Example description
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.02,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: height * 0.02),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .popAndPushNamed('/lectures');
                                        },
                                        child: const Text('Enroll Now'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
