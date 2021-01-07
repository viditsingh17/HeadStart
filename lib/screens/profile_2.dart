import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthApp/configuration.dart';
import 'package:healthApp/screens/profile_3.dart';
import 'package:healthApp/widgets/back_button.dart';
import 'package:healthApp/widgets/custom_button.dart';
import 'package:healthApp/widgets/gender_card.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  bool _isFemale = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(),
                Text(
                  'Step 2/5',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Which one are you?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isFemale = false;
                          });
                        },
                        child: GenderCard(
                          height: 210,
                          width: (size.width - 60) / 2,
                          active: !_isFemale,
                          label: 'Male',
                          svgPath: 'images/svg/male.svg',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isFemale = true;
                          });
                        },
                        child: GenderCard(
                          height: 210,
                          width: (size.width - 60) / 2,
                          active: _isFemale,
                          label: 'Female',
                          svgPath: 'images/svg/female.svg',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'To give you a customized experience we need to know your gender',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                CustomButton(
                  label: 'Continue',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Profile3();
                      }),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Prefer not to choose',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
