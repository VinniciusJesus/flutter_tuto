import 'package:flutter/material.dart';

import 'cores_do_projeto.dart';

class BorderInputWidget extends StatelessWidget {
  BorderInputWidget({
    Key? key,
    required this.label,
    required this.textInputType,
    required this.controller,
    required this.fontSize,
    this.validator,
  }) : super(key: key);

  final String label;
  final TextInputType textInputType;
  final double fontSize;
  String? Function(String?)? validator;

  final TextEditingController controller;

  final _appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(
          fontSize: fontSize,
        ),
        keyboardType: textInputType,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              width: 1,
              color: _appColors.error,
            ),
          ),
          errorStyle: TextStyle(color: _appColors.error, fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
        ));
  }
}
