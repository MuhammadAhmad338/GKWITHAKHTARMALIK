class CourseItem {
  final String title;
  final String route;

  CourseItem({required this.title, required this.route});
}

Future<List<CourseItem>> fetchCourseItems() async {
  // Simulate a network request or database query
  await Future.delayed(const Duration(seconds: 1));
  return [
    CourseItem(title: "View Courses", route: "/course"),
    CourseItem(title: "View Quiz", route: "/quiz"),
    CourseItem(title: "VideoConference", route: "/videoconference"),
  ];
}

enum SignInType { recorded, quizzes, session }
