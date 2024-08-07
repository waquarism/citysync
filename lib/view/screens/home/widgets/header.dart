import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/app_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.location_on_rounded),
                AppText.primaryText(text: 'Sector 14, Dwarka')
                    .paddingSymmetric(horizontal: 4),
                const Icon(Icons.arrow_drop_down_sharp),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.blueGrey.shade400,
                ),
                child: const Icon(
                  Icons.notifications_outlined,
                  size: 32,
                ).paddingAll(4)),
          ],
        );
  }
}