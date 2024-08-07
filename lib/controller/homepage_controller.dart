import 'package:get/get.dart';

class HomepageController extends GetxController {
    Rx<int> currentIndex = 0.obs;

    void updateNavIndex(int index){
      currentIndex.value = index;
    }
}