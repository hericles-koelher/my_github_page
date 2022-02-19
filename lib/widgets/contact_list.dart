import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactList extends StatelessWidget {
  static const double splashRadius = 25;
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Contact Me:",
          style: GoogleFonts.bebasNeue(
            fontSize: 25,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  launch("https://www.linkedin.com/in/hericleskoelher/");
                },
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                splashRadius: splashRadius,
                tooltip: "LinkedIn",
              ),
              IconButton(
                onPressed: () {
                  launch("mailto:brunokoelher@hotmail.com");
                },
                icon: const FaIcon(FontAwesomeIcons.envelope),
                splashRadius: splashRadius,
                tooltip: "E-mail",
              ),
              IconButton(
                onPressed: () {
                  launch("https://twitter.com/HericlesKoelher");
                },
                icon: const FaIcon(FontAwesomeIcons.twitter),
                splashRadius: splashRadius,
                tooltip: "Twitter",
              ),
              IconButton(
                onPressed: () {
                  launch("https://www.facebook.com/Hericles.Koelher");
                },
                icon: const FaIcon(FontAwesomeIcons.facebook),
                splashRadius: splashRadius,
                tooltip: "Facebook",
              ),
              IconButton(
                onPressed: () {
                  launch("https://www.instagram.com/hericles.koelher/");
                },
                icon: const FaIcon(FontAwesomeIcons.instagram),
                splashRadius: splashRadius,
                tooltip: "Instagram",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
