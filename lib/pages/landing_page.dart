import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_github_page/widgets/about_session.dart';

import '../widgets/contact_list.dart';
import '../widgets/footer.dart';
import '../widgets/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        buildForSmartphone: (context) {
          var customSpacer = const SizedBox(height: 20);

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: ListView(
              children: [
                customSpacer,
                Text(
                  "Welcome to my website!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bebasNeue(
                    fontSize: 25,
                  ),
                ),
                Image.asset(
                  "assets/images/avatar.png",
                  height: 200,
                ),
                customSpacer,
                const AboutSession(
                  titleSize: 20,
                  textSize: 16,
                  maxHeight: 150,
                ),
                customSpacer,
                const ContactList(
                  titleSize: 20,
                  maxHeight: 50,
                ),
                customSpacer,
                const Footer(
                  fontSize: 14,
                ),
              ],
            ),
          );
        },
        buildForTablet: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
            ),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  "Welcome to my website!",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 50,
                  ),
                ),
                const Spacer(),
                Flexible(
                  flex: 3,
                  child: Image.asset("assets/images/avatar.png"),
                ),
                const Spacer(),
                const Expanded(
                  flex: 4,
                  child: AboutSession(
                    titleSize: 40,
                    textSize: 24,
                  ),
                ),
                const Spacer(),
                const Expanded(
                  child: ContactList(
                    titleSize: 30,
                  ),
                ),
                const Spacer(),
                const Divider(),
                const Footer(),
              ],
            ),
          );
        },
        buildForDesktop: (context) {
          return Column(
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
                          Text(
                            "Welcome to my website!",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 50,
                            ),
                          ),
                          const Spacer(),
                          const Expanded(
                            flex: 4,
                            child: AboutSession(),
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
          );
        },
      ),
    );
  }
}
