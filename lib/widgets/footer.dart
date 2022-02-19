import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: Text(
          "Made with 💜 and Flutter",
          style: GoogleFonts.lato(fontSize: 18),
        ),
      ),
    );
  }
}
