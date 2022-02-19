import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_github_page/widgets/contact_list.dart';
import 'package:my_github_page/widgets/footer.dart';

void main() {
  runApp(const MyGithubPage());
}

class MyGithubPage extends StatelessWidget {
  const MyGithubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Image.asset("assets/images/avatar.png"),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Spacer(),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              "Welcome to my website!",
                              speed: const Duration(milliseconds: 115),
                              curve: Curves.easeInOut,
                              textAlign: TextAlign.center,
                              textStyle: GoogleFonts.bebasNeue(
                                fontSize: 40,
                              ),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 4,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Center(
                                child: AnimatedTextKit(
                                  repeatForever: true,
                                  animatedTexts: [
                                    WavyAnimatedText(
                                      "Session Under Development",
                                      textStyle: GoogleFonts.lato(fontSize: 30),
                                      speed: const Duration(milliseconds: 350),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Expanded(
                          child: ContactList(),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
