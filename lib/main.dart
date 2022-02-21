import 'package:flutter/material.dart';
import 'package:my_github_page/pages/landing_page.dart';

void main() {
  runApp(const MyGithubPage());
}

class MyGithubPage extends StatelessWidget {
  const MyGithubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Landing Page",
      theme: ThemeData.dark(),
      home: const LandingPage(),
    );
  }
}
