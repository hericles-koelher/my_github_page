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
          child: Text(
            "Session Under Development",
            style: GoogleFonts.lato(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
