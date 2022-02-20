import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_github_page/widgets/contact_list.dart';
import 'package:my_github_page/widgets/development_banner.dart';
import 'package:my_github_page/widgets/footer.dart';
import 'package:my_github_page/widgets/responsive_builder.dart';

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
              child: ResponsiveBuilder(
                buildForSmartphone: (context) {
                  return const DevelopmentBanner();
                },
                buildForTablet: (context) {
                  return const DevelopmentBanner();
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
                              child: DevelopmentBanner(),
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
      ),
    );
  }
}
