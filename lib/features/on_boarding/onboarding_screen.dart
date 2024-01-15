import 'package:flutter/material.dart';
import 'package:lenses_planet/core/colors/colors.dart';
import 'package:lenses_planet/core/widgets/buttons/lenses_planet_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../core/Outward_curve_clipper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LensesPlanetColors.buttonText,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SKIP',
                        style: TextStyle(
                            fontSize: 15, color: LensesPlanetColors.blue1),
                      )),
                ),
                WebsafeSvg.asset('assets/svgs/Frame1.svg', height: 550),
              ],
            )),
            Align(
              alignment: const Alignment(0, 01),
              child: ClipPath(
                clipper: OutwardCurveClipper(),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 80.0,
                    left: 26.0,
                    right: 26.0
                  ),
                  color: LensesPlanetColors.blue2,
                  height: 380,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to Lenses planet',
                            style: TextStyle(
                                color: LensesPlanetColors.black1,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Our goal is to streamline and enhance your experience. We\'ve fine-tuned the lens ordering process, ensuring it\'s not just easy but optimized for your needs',
                            style: TextStyle(
                              color: LensesPlanetColors.black1,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      LensesPlanetButton(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Create account',
                            style: TextStyle(
                                color: LensesPlanetColors.buttonText,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Already have an account? Log in',
                        style: TextStyle(
                            color: LensesPlanetColors.black2, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
