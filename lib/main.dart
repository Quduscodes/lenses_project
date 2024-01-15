import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lenses_planet/core/router/router.dart';
import 'package:lenses_planet/features/create_account/Presentation/screens/create_account/create_account_for_optician_screen_one.dart';
import 'package:lenses_planet/features/on_boarding/onboarding_screen.dart';
import 'package:lenses_planet/features/profile/Presentation/screens/profile_setup_first_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routers().onGenerateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Lenses Planet',
      home: const ProfileSetupFirstScreen(),
    );
  }
}

