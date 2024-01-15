import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class LensesPlanetButton extends StatelessWidget {
  const LensesPlanetButton({super.key, required this.child});

  final TextButton child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: LensesPlanetColors.blue1),
      child: child,
    );();
  }
}
