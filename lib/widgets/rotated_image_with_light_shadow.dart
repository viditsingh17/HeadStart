import 'package:flutter/material.dart';
import 'package:healthApp/configuration.dart';

class RotatedImageWithLightShadow extends StatelessWidget {
  final String imagePath;
  const RotatedImageWithLightShadow({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: lightCustomShadow,
        ),
        child: Image.asset(
          imagePath,
          height: 100,
        ),
      ),
    );
  }
}
