import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/app_color.dart';
import '../const/consts.dart';
import '../controller/homepage_controller.dart';
import 'screens/explore_map.dart';
import 'screens/home/home.dart';
import 'screens/profile.dart';
import 'screens/save.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomepageController homepageController = Get.put(HomepageController());

    List<IconData> navIcons = [
      Icons.home_max_rounded,
      Icons.bookmark_added,
      Icons.explore,
      Icons.person_2_rounded,
    ];

    List<Widget> widgets = const [
      Home(),
      Save(),
      ExploreMap(),
      Profile(),
    ];

    return Obx(
      () {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              widgets
                  .elementAt(homepageController.currentIndex.value),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70), ),
                    color: AppColor.activityCardBg,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      for (int i = 0; i < navIcons.length; i++) ...[
                        InkWell(
                          onTap: () {
                            homepageController.updateNavIndex(i);
                          },
                          child: Container(
                            padding: i == homepageController.currentIndex.value ? const EdgeInsets.all(8) : null,
                            decoration: i == homepageController.currentIndex.value ? const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                              color: AppColor.secondaryColor,
                  
                            ) : null,
                            child: Icon(
                              navIcons[i],
                              color: i == homepageController.currentIndex.value
                                  ? AppColor.tabEnabled
                                  : AppColor.secondaryColor.withOpacity(0.8),
                              size: i == homepageController.currentIndex.value
                                  ? AppConst.enabledIconSize
                                  : AppConst.disabledIconSize,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ).paddingAll(18),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
