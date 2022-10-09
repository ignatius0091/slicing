import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:slicing/app/routes/app_pages.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd() {
    Get.offAllNamed(Routes.LOGIN);
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(
      'assets/$assetName',
      width: width,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: const Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          titleWidget: Text(
            "Endless option",
            style: TextStyle(fontSize: 28, color: Color(0xff192252), fontWeight: FontWeight.bold),
          ),
          bodyWidget: Text(
            "Choose of hundred of models you won't find anywhere. Pick it up or get it delivered where you want it.",
            style: TextStyle(fontSize: 18, color: Color(0xff192252), fontWeight: FontWeight.w300),
          ),
          image: _buildImage('carOne.jpeg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Text(
            "Drive confidently",
            style: TextStyle(fontSize: 28, color: Color(0xff192252), fontWeight: FontWeight.bold),
          ),
          bodyWidget: Text(
            "Drive confidently with your choice of protection plans, All plans include varying level of insurance form Fakeh Insurance",
            style: TextStyle(fontSize: 18, color: Color(0xff192252), fontWeight: FontWeight.w300),
          ),
          image: _buildImage('carTwo.jpeg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Text(
            "24/7 Support",
            style: TextStyle(fontSize: 28, color: Color(0xff192252), fontWeight: FontWeight.bold),
          ),
          bodyWidget: Text(
            "Rest easy knowing that everyone in Pikil community is screened and support roadside assistance",
            style: TextStyle(fontSize: 18, color: Color(0xff192252), fontWeight: FontWeight.w300),
          ),
          image: _buildImage('carThree.jpeg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(
        Icons.arrow_back_ios,
        color: Color(0xff192252),
      ),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(
        Icons.arrow_forward_ios,
        color: Color(0xff192252),
      ),
      done: const Text('Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff192252),
          )),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xff192252),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
