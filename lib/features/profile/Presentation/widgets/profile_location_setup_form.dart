import 'package:flutter/material.dart';

import '../../../../core/colors/colors.dart';
import '../../Data/models/profile_location_setup.dart';

class ProfileLocationSetupForm extends StatefulWidget {
  const ProfileLocationSetupForm({super.key});

  @override
  State<ProfileLocationSetupForm> createState() =>
      _ProfileLocationSetupFormState();
}

class _ProfileLocationSetupFormState extends State<ProfileLocationSetupForm> {
  final _formKey = GlobalKey<FormState>();
  late final ProfileSetupFormData _formData = ProfileSetupFormData();
  final List<String> statesCity = [
    'lagos',
    'Kaduna',
    'Abuja',
  ];
  String? selectedStateCity;
  String? city;
  String? state;
  String? officeAddress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: LensesPlanetColors.blue3,
        ),
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              const Text('State', style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),),
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: LensesPlanetColors.buttonText,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButtonFormField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: LensesPlanetColors.black5,
                                    ),
                                    labelText: 'Select your Profession',
                                  ),
                                  items: statesCity.map((String stateCity) {
                                    return DropdownMenuItem(
                                      value: stateCity,
                                      child: Text(stateCity),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) =>
                                      setState(() => selectedStateCity = newValue),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: LensesPlanetColors.buttonText,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                                labelStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: LensesPlanetColors.black5,
                                ),
                                labelText: 'Select your Profession',
                              ),
                              items: statesCity.map((String stateCity) {
                                return DropdownMenuItem(
                                  value: stateCity,
                                  child: Text(stateCity),
                                );
                              }).toList(),
                              onChanged: (String? newValue) =>
                                  setState(() => selectedStateCity = newValue),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
