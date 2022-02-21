import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_github_page/widgets/about_session.dart';

import '../widgets/contact_list.dart';
import '../widgets/development_banner.dart';
import '../widgets/footer.dart';
import '../widgets/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ResponsiveBuilder(
              buildForSmartphone: (context) {
                return const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: DevelopmentBanner(),
                );
              },
              buildForTablet: (context) {
                return const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: DevelopmentBanner(),
                );
              },
              buildForDesktop: (context) {
                return Row(
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
                              fontSize: 40,
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
                );
              },
            ),
          ),
          const Divider(),
          const Footer(),
        ],
      ),
    );
  }
}
