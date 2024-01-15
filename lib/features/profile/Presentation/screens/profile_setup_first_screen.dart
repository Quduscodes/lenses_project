import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lenses_planet/core/colors/colors.dart';
import 'package:lenses_planet/core/widgets/buttons/lenses_planet_button.dart';

import '../../../create_account/Presentation/widgets/create_account_for_optician_form.dart';

final profileSetupProgressProvider = StateProvider<int>((ref) => 1);

class ProfileSetupFirstScreen extends ConsumerStatefulWidget {
  const ProfileSetupFirstScreen({super.key});

  @override
  ConsumerState<ProfileSetupFirstScreen> createState() =>
      _ProfileSetupFirstScreenState();
}

class _ProfileSetupFirstScreenState
    extends ConsumerState<ProfileSetupFirstScreen> {
  @override
  Widget build(BuildContext context) {
    final count = ref.watch(profileSetupProgressProvider);
    return Scaffold(
      backgroundColor: LensesPlanetColors.bgColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Profile Setup',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: LensesPlanetColors.black1,
                    ),
                  ),
                  Text(
                    '${count.toString()}/3',
                    style: const TextStyle(
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
              const CreateAccountForOpticianForm(),
              const SizedBox(
                height: 20,
              ),
              LensesPlanetButton(
                child: TextButton(
                  onPressed: () {
                    ref.read(profileSetupProgressProvider.notifier).state++;
                  },
                  child: const Text(
                    'Continue',
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
