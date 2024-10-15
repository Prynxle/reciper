import 'package:flutter/material.dart';
import 'package:xd/components/size.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= mobileView) {
          // Mobile View
          return mobileLayout;
        } else if (constraints.maxWidth < desktopView) {
          // Tablet View
          return tabletLayout;
        } else {
          // Desktop View
          return desktopLayout;
        }
      },
    );
  }
}
