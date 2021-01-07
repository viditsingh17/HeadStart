import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthApp/configuration.dart';
import 'package:healthApp/screens/splash_screen.dart';
import 'package:healthApp/widgets/back_button.dart';
import 'package:healthApp/widgets/custom_button.dart';
import 'package:healthApp/widgets/gender_card.dart';
import 'package:healthApp/widgets/rotated_image_with_light_shadow.dart';

class Profile3 extends StatefulWidget {
  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  ScrollController _scrollController = ScrollController();
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
                  'Step 3/5',
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
                  'Profile picture',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 200,
                  width: double.infinity,
                  // color: Colors.red,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: ListWheelScrollView(
                      itemExtent: 80,
                      physics: BouncingScrollPhysics(),
                      controller: _scrollController,
                      // offAxisFraction: 0,
                      squeeze: 0.7,
                      children: <Widget>[
                        RotatedImageWithLightShadow(
                          imagePath: 'images/p1.png',
                        ),
                        RotatedImageWithLightShadow(
                          imagePath: 'images/p2.png',
                        ),
                        RotatedImageWithLightShadow(
                          imagePath: 'images/p3.png',
                        ),
                        RotatedImageWithLightShadow(
                          imagePath: 'images/p4.png',
                        ),
                        RotatedImageWithLightShadow(
                          imagePath: 'images/p5.png',
                        ),
                        RotatedImageWithLightShadow(
                          imagePath: 'images/p6.png',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Select a photo from one of the above avatars or add your own photo as profile picture',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Add custom photo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
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
                        return SplashScreen();
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
