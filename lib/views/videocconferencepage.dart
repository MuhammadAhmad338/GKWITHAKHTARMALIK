import 'package:flutter/material.dart';
import 'package:gkwithakhtarmalik/Helper/widthHeight.dart';

class VideoConference extends StatefulWidget {
  const VideoConference({super.key});

  @override
  State<VideoConference> createState() => _VideoConferenceState();
}

class _VideoConferenceState extends State<VideoConference> {
  @override
  Widget build(BuildContext context) {
    final height = getScreenHeight(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.0123),
          const Text(
            "Video Conference",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
