import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    required Key key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  // This isMobile, isTablet, isDesktop
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 400;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 600 &&
      MediaQuery.of(context).size.width >= 400;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1200 then we consider it a desktop
    if (_size.width >= 600) {
      return desktop;
    }
    // If width it less then 1200 and more then 768 we consider it as tablet
    else if (_size.width >= 400) {
      return tablet;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
