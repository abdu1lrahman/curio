import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageIndicatorController extends GetxController {
  final pageController = PageController();
   int currentPage = 0;

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      final page = pageController.page?.round() ?? 0;
      if (page != currentPage) {
        currentPage = page;
      }
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
