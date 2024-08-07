import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/app_text.dart';
import 'activity_widget.dart';

class ActivitesList extends StatelessWidget {
  const ActivitesList(
      {super.key,
      required this.recentSearchData,
      required this.title,
      this.centerTitle = true,
      });

  final List<ActivityWidget> recentSearchData;
  final String title;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        centerTitle
            ? Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                  AppText.primaryText(text: title).paddingSymmetric(horizontal: 12),
                  Expanded(
                    child: Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            : AppText.primaryText(text: title),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              recentSearchData.length,
              (index) => recentSearchData[index].paddingOnly(right: 24),
            ),
          ),
        ).paddingOnly(top: 16),
      ],
    );
  }
}
