import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../const/app_text.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget(
      {super.key, required this.text, required this.iconPath, this.iconSize = 50, this.textSize = 12, this.space = 0.0,});

  final String text;
  final String iconPath;
  final double iconSize;
  final double textSize;
  final double space;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          height: iconSize,
          width: iconSize,
        ),
        SizedBox(height: space,),
        AppText.activityText(text: text, size: textSize)
      ],
    );
  }
}