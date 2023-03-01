// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:instagram_flutter/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLyout;
  final Widget mobileScreenLyout;
  const ResponsiveLayout({
    Key? key,
    required this.webScreenLyout,
    required this.mobileScreenLyout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > webScreenSize) {
          return webScreenLyout;
          //web screen
        }
        // mobile screen
        return mobileScreenLyout;
      },
    );
  }
}
