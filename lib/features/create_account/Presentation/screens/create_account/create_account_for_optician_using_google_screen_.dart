import 'package:flutter/material.dart';
import 'package:lenses_planet/core/colors/colors.dart';
import 'package:lenses_planet/core/widgets/buttons/lenses_planet_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CreateAccountForOpticianUsingGoogleScreen extends StatefulWidget {
  const CreateAccountForOpticianUsingGoogleScreen({super.key});

  @override
  State<CreateAccountForOpticianUsingGoogleScreen> createState() =>
      _CreateAccountForOpticianUsingGoogleScreenState();
}

class _CreateAccountForOpticianUsingGoogleScreenState
    extends State<CreateAccountForOpticianUsingGoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding:
                const EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 20),
            color: LensesPlanetColors.bgColor,
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: IconButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     icon: const Icon(Icons.arrow_back_outlined),
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                const Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  'Get started with us',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24,
                                      color: LensesPlanetColors.black1),
                                ),
                                Text(
                                  'Create an account with us using your google account.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: LensesPlanetColors.black2,
                                  ),
                                )
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                LensesPlanetButton(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WebsafeSvg.asset('assets/svgs/google.svg',
                            colorFilter: const ColorFilter.mode(
                                LensesPlanetColors.buttonText,
                                BlendMode.srcIn)),
                        const SizedBox(
                          width: 15.0,
                        ),
                        const Text(
                          'Sign up with google',
                          style: TextStyle(
                              color: LensesPlanetColors.buttonText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
