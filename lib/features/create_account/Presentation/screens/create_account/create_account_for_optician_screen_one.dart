import 'package:flutter/material.dart';
import 'package:lenses_planet/core/colors/colors.dart';
import 'package:lenses_planet/core/router/router.dart';
import 'package:lenses_planet/features/create_account/Presentation/widgets/create_account_for_optician_form.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../../../core/widgets/buttons/lenses_planet_button.dart';

class CreateAccountForOpticianScreenOne extends StatefulWidget {
  const CreateAccountForOpticianScreenOne({super.key});

  @override
  State<CreateAccountForOpticianScreenOne> createState() =>
      _CreateAccountForOpticianScreenOneState();
}

class _CreateAccountForOpticianScreenOneState
    extends State<CreateAccountForOpticianScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LensesPlanetColors.buttonText,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Get started with us',
                      style: TextStyle(
                          color: LensesPlanetColors.black1,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Choose which account you want to create with us',
                      style: TextStyle(
                          color: LensesPlanetColors.black2,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.createAccountForOpticianUsingGoogle);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WebsafeSvg.asset('assets/svgs/google.svg'),
                            const SizedBox(
                              width: 15.0,
                            ),
                            const Text(
                              'Sign up with google',
                              style: TextStyle(
                                  color: LensesPlanetColors.blue1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 20, right: 40),
                            child: const Divider(
                              color: LensesPlanetColors.black2,
                            ),
                          ),
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(
                              color: LensesPlanetColors.black3,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 40, right: 20),
                            child: const Divider(
                              color: LensesPlanetColors.black2,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CreateAccountForOpticianForm(),
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                color: LensesPlanetColors.buttonText,
                child: LensesPlanetButton(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Create account',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: LensesPlanetColors.buttonText,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
