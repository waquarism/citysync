import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/app_color.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: AppColor.blackColor),
            hintText: 'Search to explore..',
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(44.0),
            //   borderSide: const BorderSide(
            //     color: Colors.grey,
            //     width: 1.0,
            //   ),
            // ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(44.0),
              borderSide: const BorderSide(
                color: AppColor.secondaryColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(44.0),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
          ),
        ).paddingSymmetric(vertical: 16);
  }
}