import 'package:flutter/material.dart';

class OnBoardingBackground extends StatelessWidget {
  const OnBoardingBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
