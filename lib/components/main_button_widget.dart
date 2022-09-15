import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  MainButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.bgColor = const Color(0xFF20bf6b),
    this.txtColor = Colors.white,
  }) : super(
          key: key,
        );

  final String text;
  late VoidCallback? onTap;
  late Color bgColor;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text,
          style: TextStyle(
            color: txtColor,
            fontSize: 22,
            fontWeight: FontWeight.normal,
          )),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2,
        primary: bgColor,
      ),
    );
  }
}
