import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:get/get.dart';

loadingOverlay() {
  Loader.show(
    Get.context!,
    isAppbarOverlay: true,
    isBottomBarOverlay: false,
    progressIndicator: const CircularProgressIndicator(),
    overlayColor: const Color(0x99E8EAF6),
  );
}
