import 'package:flutter/material.dart';

class OutwardCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double curveDepth = 60; // Adjust the depth of the curve here
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..quadraticBezierTo(size.width / 2, 2 * curveDepth, 0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}