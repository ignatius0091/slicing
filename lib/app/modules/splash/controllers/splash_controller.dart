import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  

  late PageController pageController;
  late int initialPage;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print("Start timer");
    Timer(Duration(seconds: 3), () => Get.toNamed(Routes.INTRO));

    pageController = PageController(initialPage: 2);
    initialPage = pageController.initialPage;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
