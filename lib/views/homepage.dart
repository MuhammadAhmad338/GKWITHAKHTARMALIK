// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:gkwithakhtarmalik/Helper/widthHeight.dart';
import 'package:gkwithakhtarmalik/Model/coursemodel.dart';
import 'package:gkwithakhtarmalik/Services/authService.dart';
import 'package:gkwithakhtarmalik/views/signuppage.dart';

class HomePage extends StatefulWidget {
  final String type = "recorded";
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService auth = AuthService();
  var courseslist = [
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

  var enterprenuerlist = [
    "assets/images/enterprenuer/enterprenuer.jpg",
    "assets/images/enterprenuer/enter2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final height = getScreenHeight(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text('GK With Akhtar Malik'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(height: height * 0.055),
            CircleAvatar(
              radius: height * 0.05, // Adjust the radius as needed
              backgroundImage: const AssetImage(
                  "assets/images/user.png"), // URL of the avatar image
            ),
            SizedBox(height: height * 0.020),
            if (widget.type == SignInType.recorded.name) ...[
              ListTile(
                title: const Text(
                  "View Courses",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  Navigator.of(context).popAndPushNamed('/course');
                },
              ),
              SizedBox(height: height * 0.005),
            ],
            if (widget.type == SignInType.quizzes.name) ...[
              ListTile(
                title: const Text(
                  "View Quiz",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  Navigator.of(context).popAndPushNamed('/quiz');
                },
              ),
              SizedBox(height: height * 0.005),
            ],
            if (widget.type == SignInType.session.name) ...[
              ListTile(
                title: const Text(
                  'VideoConference',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  Navigator.of(context).popAndPushNamed('/videoconference');
                },
              ),
              SizedBox(height: height * 0.005),
            ],
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: height * 0.016,
                    vertical: height *
                        0.016), // Add padding to match ListTile's padding
                child: TextButton.icon(
                  icon: const Icon(Icons.logout),
                  label: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      "LogOut",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors
                        .red, // This sets the button's text and icon color
                  ),
                  onPressed: () async {
                    await auth.signOut();
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(height * .016),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(children: <Widget>[
              // Background image
              Container(
                height: height * 0.200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.all(Radius.circular(height * 0.012))),
              ),
              // Centered overlay text and button
              Center(
                child: Container(
                  padding: EdgeInsets.all(height * 0.016),
                  // Optional for readability
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Empowering your future",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.024,
                        ),
                      ),
                      SizedBox(
                          height: height * 0.010), // Space between text lines
                      Text(
                        "GK with Akhtar Malik",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.018,
                        ),
                      ),
                      SizedBox(
                          height:
                              height * 0.020), // Space between text and button
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Begin"),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            SizedBox(height: height * 0.021),
            Text(
              "About Akhtar Malik",
              style: TextStyle(
                  fontSize: height * 0.018, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * .012,
            ),
            Text(
              'Embark on a journey of enlightenment with Akhtar Malik, Assistant Commissioner and two-time PMS GK Topper for 2019 & 2020. With a wealth of experience and expertise in the realm of General Knowledge, Akhtar Malik offers unparalleled guidance and insight. Beyond his administrative role, he is dedicated to fostering continuous learning, providing invaluable resources for intellectual growth. Experience a blend of wisdom and innovation tailored to your educational and professional aspirations.',
              style: TextStyle(fontSize: height * 0.016, height: 1.5),
            ),
            SizedBox(height: height * .012),
            Text(
              'Why Akhtar Malik',
              style: TextStyle(
                  fontSize: height * 0.018, fontWeight: FontWeight.bold),
            ),
            Text(
              'Assistant Commissioner Akhtar Malik, famously known as the "GK Guru," is your ultimate resource for excelling in General Knowledge for single-paper examinations administered by numerous public service commissions such as PPSC, FPSC, KPSC, BPSC, and SPSC. Leveraging extensive experience in both administration and academia, AC Akhtar Malik offers a unique combination of practical wisdom and scholarly knowledge to demystify intricate topics for aspiring candidates.',
              style: TextStyle(fontSize: height * 0.016, height: 1.5),
            ),
            SizedBox(height: height * .012),
            Text(
              'Our Courses',
              style: TextStyle(
                  fontSize: height * 0.018, fontWeight: FontWeight.bold),
            ),
            Text(
              'Explore our range of meticulously crafted courses covering Mathematics, Indo-Pak History, World Geography, Computer Science, Pakistan Affairs, Islamic Studies, English Language, and Current Affairs. Led by renowned educator Akhtar Malik, our curriculum guarantees an engaging learning experience tailored for your success. Unlock your potential and excel with us on your educational journey...',
              style: TextStyle(fontSize: height * 0.016, height: 1.5),
            ),
            SizedBox(
              height: height * 0.013,
            ),
            // make a heading with card of the enterpreneuers

            Text('Enterpreneuers',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: height * 0.02)),
            SizedBox(height: height * 0.01),
            SizedBox(
              width: double.infinity,
              height: height * .19,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Example height * 0.012
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2), // Example height * 0.016
                  child: Image.asset(
                      "assets/images/enterprenuer/enterpreneur.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: height * .012,
            ),
            SizedBox(
              width: double.infinity,
              height: height * .19,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Example height * 0.012
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2), // Example height * 0.016
                  child: Image.asset(
                    "assets/images/enterprenuer/enter2.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.012,
            ),
            Text(
              "Our Cources",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: height * .018),
            ),
            SizedBox(
              height: height * .018,
            ),
            SizedBox(height: height * 0.012),
            // GridView within a constrained container
            LayoutBuilder(
              builder: (context, constraints) {
                return GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(courseslist.length, (index) {
                    var course = courseslist[index];
                    return Card(
                      color: Colors.blueGrey,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * 0.012),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(height * 0.016),
                        child: Center(
                          child: Image.asset(
                            course,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
            SizedBox(height: height * .016),
            const Text(
              "Events Schedule",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * .016),
            Text(
              "Our blogs",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: height * 0.018,
              ),
            ),
            SizedBox(
              height: height * 0.12,
              child: ListView.builder(
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blueGrey,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * 0.012),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(height * 0.019),
                        child: Center(child: Text('Card ${index + 1}')),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
