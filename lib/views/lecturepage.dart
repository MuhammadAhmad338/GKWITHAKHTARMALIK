import 'package:flutter/material.dart';

class LecturePage extends StatefulWidget {
  const LecturePage({super.key});

  @override
  State<LecturePage> createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {
  final List<Map<String, String>> lectures = [
    {
      'title': 'Introduction to Flutter',
      'description':
          'Learn the basics of Flutter, a powerful framework for building mobile apps.',
      'image': 'assets/images/courses/course8.jpg',
    },
    {
      'title': 'State Management',
      'description':
          'Understand different state management techniques in Flutter.',
      'image': 'assets/images/courses/course8.jpg',
    },
    {
      'title': 'Building Beautiful UIs',
      'description':
          'Explore tips and tricks for designing beautiful user interfaces in Flutter.',
      'image': 'assets/images/courses/course8.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lectures',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: lectures.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).popAndPushNamed('/lecturesvideo');
              },
              child: Card(
                elevation: 10,
                margin: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        lectures[index]['image']!,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lectures[index]['title']!,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            lectures[index]['description']!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
