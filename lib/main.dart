import 'package:flutter/material.dart';
import 'screens/mobile_verify.dart';
import './screen_size_config/size_config.dart';
import './constants/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              builder: (context, child) {
                return ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: child,
                );
              },
              debugShowCheckedModeBanner: false,
              theme: AppTheme.mainTheme,
              initialRoute: MobileVerify.id,
              routes: {
                MobileVerify.id: (context) => MobileVerify(),
              },
            );
          },
        );
      },
    );
  }
}
