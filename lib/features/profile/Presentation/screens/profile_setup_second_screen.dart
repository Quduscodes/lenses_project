import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lenses_planet/features/profile/Presentation/screens/profile_setup_first_screen.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/buttons/lenses_planet_button.dart';

class ProfileSetupSecondScreen extends ConsumerStatefulWidget {
  const ProfileSetupSecondScreen({super.key});

  @override
  ConsumerState<ProfileSetupSecondScreen> createState() => _ProfileSetupSecondScreenState();
}

class _ProfileSetupSecondScreenState extends ConsumerState<ProfileSetupSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LensesPlanetColors.bgColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile Setup',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: LensesPlanetColors.black1,
                    ),
                  ),
                  Text(
                    'hello',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: LensesPlanetColors.black1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              
              LensesPlanetButton(
                child: TextButton(
                  onPressed: () {
                    ref.read(profileSetupProgressProvider.notifier).state++;
                  },
                  child: const Text(
                    'Setup profile',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: LensesPlanetColors.buttonText),
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
