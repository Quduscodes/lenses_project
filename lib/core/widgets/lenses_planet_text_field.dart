import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lenses_planet/core/colors/colors.dart';

class LensesPlanetTextField extends StatelessWidget {
  const LensesPlanetTextField({
    super.key,
    this.label,
    required this.onChanged,
    this.inputFormatters,
    this.validate,
    this.keyboardType,
    this.controller,
    this.maxLength,
    this.initialValue,
    this.style,
    this.hintText,
    this.hintStyle,
    required this.obscureText,
    this.readOnly = false,
  });

  final String? label;
  final String? initialValue;
  final Function(String?) onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validate;
  final bool readOnly;
  final TextStyle? style;
  final String? hintText;
  final TextStyle? hintStyle;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label!,
            style: style,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: LensesPlanetColors.buttonText,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              obscureText: obscureText,
              inputFormatters: inputFormatters,
              maxLength: maxLength,
              initialValue: initialValue,
              readOnly: readOnly,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: hintStyle,
                counter: const Offstage(),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              validator: validate,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
