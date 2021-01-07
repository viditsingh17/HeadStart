import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthApp/configuration.dart';

class GenderCard extends StatelessWidget {
  final double height;
  final double width;
  final bool active;
  final String label;
  final String svgPath;
  GenderCard({
    @required this.active: false,
    @required this.height,
    @required this.width,
    @required this.label,
    @required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: active ? primaryColor : Colors.white,
        boxShadow: customShadow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: active ? Colors.white : Colors.black,
            ),
          ),
          SvgPicture.asset(
            svgPath,
            fit: BoxFit.cover,
            width: 130,
          )
        ],
      ),
    );
  }
}
