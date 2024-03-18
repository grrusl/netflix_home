import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;

  final Widget? desktop;

  const Responsive({
    super.key,
    this.desktop,
    this.mobile,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints contr) {
        if (contr.maxWidth < 650 && mobile != null) {
          return mobile!;
        } else if (desktop != null) {
          return desktop!;
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
