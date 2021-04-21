import 'package:flutter/material.dart';
import '../constants/image_paths.dart';
import '../constants/screen_router_id.dart';
import '../screen_size_config/size_config.dart';
import '../widgets/welcome_bottom_container.dart';
import '../widgets/otp_verification_container.dart';

enum AuthenticationProcess { WelcomeScreen, OtpScreen }

class MobileVerify extends StatelessWidget {
  static const id = RouterId.mobile_verify_screen_id;
  final AuthenticationProcess toggler = AuthenticationProcess.WelcomeScreen;
//potrait--> heightMultiplier is the HEIGHT
//landscape--> widthMultiplier is the HEIGHT

  @override
  Widget build(BuildContext context) {
    //upper status bar padding calculation
    final upperPadding = MediaQuery.of(context).viewPadding.top;

    //subtracting the height of status bar...show that screen is not scrollable!
    final netHeightPotrait = SizeConfig.netScreenHeight - upperPadding;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //Column for the whole intro page layout
          child: Column(
            children: [
              //meels logo container
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2.43,
                  ),
                  //divided the screen in three segments based on ratio mathematics
                  height: netHeightPotrait * (1 / 6) - 20,
                  child: Image.asset(
                    ImagePaths.meels_logo, //meels logo asset load
                  ),
                ),
              ),
              //main intro vector image container
              Container(
                height: netHeightPotrait * (3 / 6) - 10,
                child: Image.asset(
                  ImagePaths.start_image, //main intro asset load
                ),
              ),
              //welcomeContainer is the welcome screen view bottom container!

              // WelcomeContainer(
              //   fullScreenHeight:
              //       netHeightPotrait, //full screen property is passing through constructor
              // ),
              OtpVerifcationContainer(
                fullScreenHeight: netHeightPotrait,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
