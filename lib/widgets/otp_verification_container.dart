import 'package:flutter/material.dart';
import 'package:meels_customer/widgets/editClickHereButton.dart';
import '../screen_size_config/size_config.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import '../constants/strings.dart';
import '../constants/enums.dart';

class OtpVerifcationContainer extends StatelessWidget {
  final double fullScreenHeight;
  OtpVerifcationContainer({
    this.fullScreenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 3.60,
        ),
        height: fullScreenHeight *
            (2 / 6), //using the full screen height and put it in a ratio
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.otpMessage, //34
              style: Theme.of(context).textTheme.headline2.copyWith(
                    fontSize: SizeConfig.textMultiplier * 2.93,
                    color: Colors.black,
                  ),
            ),
            Row(
              children: [
                Text(
                  Strings.otpOn,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        fontSize: SizeConfig.textMultiplier * 2.633,
                        color: Colors.black,
                      ),
                ),
                Text(
                  ' 8009726785 ',
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        fontSize: SizeConfig.textMultiplier * 2.93,
                        color: Color(0xffB4344D),
                      ),
                ),
                EditClickHere(
                  customButton: ButtonName.Edit,
                )
                // GestureDetector(
                //   child: Text(
                //     Strings.editButton,
                //     style: Theme.of(context).textTheme.headline4.copyWith(
                //           decoration: TextDecoration.underline,
                //           color: Color(0xffB4344D),
                //           fontSize: SizeConfig.textMultiplier * 2.04,
                //         ),
                //   ),
                //   onTap: () {},
                // ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.151,
            ),
            PinEntryTextField(
              fontSize: SizeConfig.textMultiplier * 2.93,
              showFieldAsBox: true,
              fields: 6,
              onSubmit: (String pin) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pin"),
                        content: Text('Pin entered is $pin'),
                      );
                    }); //end showDialog()
              }, // end onSubmit
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 0.732,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  Strings.otpNotReceived,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Color(0xffB4344D),
                        fontSize: SizeConfig.textMultiplier * 2.04,
                      ),
                ),
                EditClickHere(
                  customButton: ButtonName.ClickHere,
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.46,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: SizeConfig.textMultiplier * 6.73,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      Strings.verifyButton,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontSize: SizeConfig.textMultiplier * 2.93,
                          ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffB4344D),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
