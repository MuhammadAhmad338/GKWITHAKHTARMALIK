// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class YouTubeVideoScreen extends StatefulWidget {
  const YouTubeVideoScreen({super.key});

  @override
  State<YouTubeVideoScreen> createState() => _YouTubeVideoScreenState();
}

class _YouTubeVideoScreenState extends State<YouTubeVideoScreen> {
  @override
  Widget build(BuildContext context) {
    const String videoUrl = 'https://www.youtube.com/watch?v=0pwpP2QOW9g';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'YouTube Video',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse(videoUrl)),
      ),
    );
  }
}
