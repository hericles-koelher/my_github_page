import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSession extends StatelessWidget {
  const AboutSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var customSpacer = const SizedBox(height: 15);
    var commonTextStyle = GoogleFonts.lato(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: Theme.of(context).textTheme.bodyText1?.color,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "About Me",
          style: GoogleFonts.bebasNeue(fontSize: 30),
        ),
        customSpacer,
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            // workaround to add first paragraph identation...
            text:
                "${" " * 8}Hello dear visitor, my name is Hericles and I am a CS student at ",
            children: [
              TextSpan(
                text: "UFES",
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("https://www.ufes.br/"),
              ),
              const TextSpan(
                text: " and a ",
              ),
              TextSpan(
                text: "Flutter",
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("https://flutter.dev/"),
              ),
              const TextSpan(text: " developer in the free time."),
            ],
            style: commonTextStyle,
          ),
        ),
        customSpacer,
        RichText(
          text: TextSpan(
            style: commonTextStyle,
            text: "Find my projects ",
            children: [
              TextSpan(
                text: "here",
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("https://github.com/hericles-koelher"),
              ),
              const TextSpan(text: "."),
            ],
          ),
        ),
      ],
    );
  }
}
