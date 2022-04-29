import 'package:get/get.dart';

class LibraryController extends GetxController {
  bool isDownloadedTabSelected = true;
  bool isDeviceTabSelected = false;
  bool isRecommendTabSelected = false;

  void selectDownloadedTab() {
    isDownloadedTabSelected = true;
    isDeviceTabSelected = false;
    isRecommendTabSelected = false;
    update();
  }

  void selectDeviceTab() {
    isDownloadedTabSelected = false;
    isDeviceTabSelected = true;
    isRecommendTabSelected = false;
    update();
  }

  void selectRecommendTab() {
    isDownloadedTabSelected = false;
    isDeviceTabSelected = false;
    isRecommendTabSelected = true;
    update();
  }
}
