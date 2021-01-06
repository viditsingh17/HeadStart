import 'package:flutter/material.dart';
import 'package:healthApp/configuration.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final onTap;
  const CustomButton({this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(40),
          boxShadow: customShadow,
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
