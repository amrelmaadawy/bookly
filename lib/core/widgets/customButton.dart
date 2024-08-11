import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton(
      {super.key,
      required this.backGroundColor,
      required this.text,
      required this.TextColor,
      required this.borderRadius, required this.onPressed});
  final Color backGroundColor;
  final String text;
  final Color TextColor;
  final BorderRadius borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: backGroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
              color: TextColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
