import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext) buildForSmartphone;
  final Widget Function(BuildContext) buildForTablet;
  final Widget Function(BuildContext) buildForDesktop;

  static const int kSmartphoneBreakpoint = 480;
  static const int kTableBreakpoint = 768;
  static const int kDesktopBreakpoint = 1024;

  const ResponsiveBuilder({
    Key? key,
    required this.buildForSmartphone,
    required this.buildForTablet,
    required this.buildForDesktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= kSmartphoneBreakpoint) {
          return buildForSmartphone(context);
        } else if (constraints.maxWidth <= kTableBreakpoint) {
          return buildForTablet(context);
        } else {
          return buildForDesktop(context);
        }
      },
    );
  }
}
