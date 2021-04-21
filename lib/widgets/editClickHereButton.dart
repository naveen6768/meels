import 'package:flutter/material.dart';
import '../constants/strings.dart';
import '../screen_size_config/size_config.dart';
import '../constants/enums.dart';

class EditClickHere extends StatelessWidget {
  final ButtonName customButton;
  EditClickHere({this.customButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        customButton == ButtonName.Edit
            ? Strings.editButton
            : Strings.clickHereButton,
        style: Theme.of(context).textTheme.headline4.copyWith(
              decoration: TextDecoration.underline,
              color: Color(0xffB4344D),
              fontSize: SizeConfig.textMultiplier * 2.04,
            ),
      ),
      onTap: () {},
    );
  }
}
