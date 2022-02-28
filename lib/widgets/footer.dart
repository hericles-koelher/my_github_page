import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  final double fontSize;

  const Footer({
    Key? key,
    this.fontSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: Text(
          "Made with 💜 and Flutter",
          style: GoogleFonts.lato(fontSize: fontSize),
        ),
      ),
    );
  }
}
