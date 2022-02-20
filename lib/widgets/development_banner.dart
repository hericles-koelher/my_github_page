import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DevelopmentBanner extends StatelessWidget {
  const DevelopmentBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
