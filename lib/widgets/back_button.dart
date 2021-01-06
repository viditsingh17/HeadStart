import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthApp/configuration.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: customShadow,
      ),
      alignment: Alignment.center,
      child: IconButton(
        icon: Icon(
          CupertinoIcons.back,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        iconSize: 22,
        color: Colors.white,
      ),
    );
  }
}
