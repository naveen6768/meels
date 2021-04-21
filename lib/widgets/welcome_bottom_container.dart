import 'package:flutter/material.dart';
import '../constants/app_theme.dart';
import '../screen_size_config/size_config.dart';
import '../constants/strings.dart';

class WelcomeContainer extends StatelessWidget {
  final double fullScreenHeight;
  WelcomeContainer({
    this.fullScreenHeight,
  });
  @override
  Widget build(BuildContext context) {
    //this is the container for bottom welcome message and mobile number entry screen
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 3.60,
      ),
      height: fullScreenHeight *
          (2 / 6), //using the full screen height and put it in a ratio
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Strings.welcome,
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: SizeConfig.textMultiplier * 3.60,
                ),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 1.5),
          Divider(),
          SizedBox(height: SizeConfig.heightMultiplier * 2.5),
          //container for the textfield and the button to verify it!!
          Container(
            height: SizeConfig.heightMultiplier * 7.0,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Color(
                      0xff8D8F9C,
                    ),
                    style: TextStyle(
                        color: Color(0xff8D8F9C),
                        fontSize: SizeConfig.textMultiplier * 2.45),
                    decoration: AppTheme.textFieldDecoration,
                  ),
                ),
                //this is the button placed paralle to the textField
                Container(
                  decoration: AppTheme.outerButtonStyle,
                  height: SizeConfig.heightMultiplier * 7.8,
                  width: SizeConfig.widthMultiplier * 29,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xffB4344D),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_right_alt,
                        size: 40.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 4,
          ),
          //tnc message below the page!
          Text(
            Strings.tnc,
            style: Theme.of(context).textTheme.headline2.copyWith(
                  fontSize: SizeConfig.textMultiplier * 1.7,
                ),
          ),
        ],
      ),
    );
  }
}
