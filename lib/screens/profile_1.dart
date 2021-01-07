import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthApp/configuration.dart';
import 'package:healthApp/screens/profile_2.dart';
import 'package:healthApp/screens/splash_screen.dart';
import 'package:healthApp/widgets/back_button.dart';
import 'package:healthApp/widgets/custom_button.dart';
import 'package:healthApp/widgets/gender_card.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
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
                  'Step 1/5',
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
                  'Which is your name?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                //TextInputField
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: customShadow,
                    color: Colors.white,
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'First name',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      fillColor: Colors.green,
                      border: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: customShadow,
                    color: Colors.white,
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Last name',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      fillColor: Colors.green,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'We do not let you information to any third party applications',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(
                  height: 160,
                ),
                CustomButton(
                  label: 'Continue',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Profile2();
                      }),
                    );
                  },
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
