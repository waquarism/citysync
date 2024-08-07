import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/app_color.dart';
import '../../../const/asset_path.dart';
import 'widgets/activity_widget.dart';
import 'widgets/header.dart';
import 'widgets/home_search_bar.dart';
import 'widgets/activity_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<ActivityWidget> activitiesList = const [
      ActivityWidget(text: 'food', iconPath: AssetPath.foodIcon),
      ActivityWidget(text: 'hospital', iconPath: AssetPath.hospitalIcon),
      ActivityWidget(text: 'sports', iconPath: AssetPath.sportsIcon),
      ActivityWidget(text: 'grocery', iconPath: AssetPath.groceryIcon),
      ActivityWidget(text: 'hotel', iconPath: AssetPath.hotelIcon),
      ActivityWidget(text: 'food', iconPath: AssetPath.foodIcon),
      ActivityWidget(text: 'hospital', iconPath: AssetPath.hospitalIcon),
      ActivityWidget(text: 'sports', iconPath: AssetPath.sportsIcon),
      ActivityWidget(text: 'grocery', iconPath: AssetPath.groceryIcon),
      ActivityWidget(text: 'hotel', iconPath: AssetPath.hotelIcon),
    ];

    List<ActivityWidget> activityWidgets = const [
      ActivityWidget(
        text: 'Activities',
        iconPath: AssetPath.activityIcon,
        iconSize: 80,
        textSize: 18,
        space: 12,
      ),
      ActivityWidget(
        text: 'Cab',
        iconPath: AssetPath.cabIcon,
        iconSize: 80,
        textSize: 18,
        space: 12,
      ),
      ActivityWidget(
        text: 'Explore',
        iconPath: AssetPath.exploreIcon,
        iconSize: 80,
        textSize: 18,
        space: 12,
      ),
      ActivityWidget(
        text: 'Shows',
        iconPath: AssetPath.showsIcon,
        iconSize: 80,
        textSize: 18,
        space: 12,
      ),
    ];

    return ListView(
      children: [
        const Header(),
        const HomeSearchBar(),
        ActivitesList(
          recentSearchData: activitiesList,
          title: 'recent search',
          centerTitle: false,
        ),
        Expanded(
          flex: 1,
          child: GridView(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            children: List.generate(
              activityWidgets.length,
              (index) {
                return Container(
                    decoration: BoxDecoration(
                      color: AppColor.activityCardBg,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: activityWidgets[index]);
              },
            ),
          ),
        ),
        ActivitesList(
          recentSearchData: activitiesList,
          title: 'Sports',
        ),
        ActivitesList(
          recentSearchData: activitiesList,
          title: 'Shows',
        ),
      ],
    ).paddingOnly(left: 18, right: 18, top: 24, bottom: 80);
  }
}
