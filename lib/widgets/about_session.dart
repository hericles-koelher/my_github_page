import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSession extends StatelessWidget {
  final double titleSize;
  final double textSize;
  final double? maxWidth;
  final double? maxHeight;

  const AboutSession(
      {Key? key,
      this.titleSize = 30,
      this.textSize = 18,
      this.maxWidth,
      this.maxHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var customSpacer = const SizedBox(height: 15);
    var commonTextStyle = GoogleFonts.lato(
      fontSize: textSize,
      fontWeight: FontWeight.w300,
      color: Theme.of(context).textTheme.bodyText1?.color,
    );

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? double.infinity,
        maxHeight: maxHeight ?? double.infinity,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "About Me",
            style: GoogleFonts.bebasNeue(fontSize: titleSize),
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
                    ..onTap =
                        () => launch("https://github.com/hericles-koelher"),
                ),
                const TextSpan(text: "."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
