import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:slicing/app/modules/intro/views/onBoardingPage.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingPage(),
    );
  }
}
