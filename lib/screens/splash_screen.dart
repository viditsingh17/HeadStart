import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthApp/configuration.dart';
import 'package:healthApp/screens/profile_1.dart';
import 'package:healthApp/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                'images/svg/logo.svg',
                semanticsLabel: 'logo',
                fit: BoxFit.cover,
                height: 160,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Whether your goal is to lose weight, gain muscles or to maintain your health. This app is for you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              CustomButton(
                label: 'Let\'s start the journey',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Profile1();
                    }),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
