import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lenses_planet/core/colors/colors.dart';
import 'package:lenses_planet/core/validations/form_validations.dart';
import 'package:lenses_planet/core/widgets/buttons/lenses_planet_button.dart';
import 'package:lenses_planet/core/widgets/lenses_planet_text_field.dart';

import '../../Data/models/create_account_for_optician.dart';

class CreateAccountForOpticianForm extends StatefulWidget{
  const CreateAccountForOpticianForm({super.key});

  @override
  State<CreateAccountForOpticianForm> createState() =>
      _CreateAccountForOpticianFormState();
}

class _CreateAccountForOpticianFormState
    extends State<CreateAccountForOpticianForm> {
  final _formKey = GlobalKey<FormState>();
  late CreateAccountForOpticianFormData _formData =
      CreateAccountForOpticianFormData();
  final List<String> professions = [
    'Ophthalmologist',
    'Medical Doctor',
    'Optometrist',
    'Optician',
    'Agent'
  ];
  String? selectedProfession;
  String? opticianName;
  String? phoneNumber;
  String? emailAddress;
  String? createPassword;

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
                          items: professions.map((String profession) {
                            return DropdownMenuItem(
                              value: profession,
                              child: Text(profession),
                            );
                          }).toList(),
                          onChanged: (String? newValue) =>
                              setState(() => selectedProfession = newValue),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      LensesPlanetTextField(
                          obscureText: false,
                          label: 'Optician Name',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.text,
                          validate: AuthFormValidations.validateRequiredField,
                          onChanged: (value) {
                            _formData =
                                _formData.copyWith(opticianName: value ?? '');
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      LensesPlanetTextField(
                          obscureText: false,
                          hintText: 'You will get an OTP',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: LensesPlanetColors.black4),
                          label: 'Phone Number',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          maxLength: 11,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          validate: (String? value) =>
                              AuthFormValidations.validatePhoneNumber(
                                  value, 11),
                          onChanged: (value) {
                            _formData =
                                _formData.copyWith(phoneNumber: value ?? '');
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      LensesPlanetTextField(
                        label: 'Email Address',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        keyboardType: TextInputType.text,
                        validate: AuthFormValidations.validateEmailField,
                        onChanged: (value) {
                          _formData =
                              _formData.copyWith(emailAddress: value ?? '');
                        },
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      LensesPlanetTextField(
                          obscureText: true,
                          label: 'Create Password',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          validate: AuthFormValidations.validatePassword,
                          onChanged: (value) {
                            _formData =
                                _formData.copyWith(createPassword: value ?? '');
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      LensesPlanetTextField(
                          obscureText: true,
                          label: 'Confirm Password',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          validate: (String? value) =>
                              AuthFormValidations.validateRePassword(
                                  value, _formData.createPassword!),
                          onChanged: (value) {
                            _formData = _formData.copyWith(
                                confirmPassword: value ?? '');
                          })
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
