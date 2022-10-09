import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:slicing/app/routes/app_pages.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff192252),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Check your email',
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff192252),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'We already sent you 4 digit OTP number to your',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Color(0xff192252),
                ),
              ),
              Row(
                children: [
                  Text(
                    "email ",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff192252),
                    ),
                  ),
                  Text(
                    "tst@mail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff192252),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              OTPTextField(
                  controller: controller.otpController,
                  length: 4,
                  width: Get.width,
                  fieldWidth: 60,
                  style: TextStyle(fontSize: 17),
                  fieldStyle: FieldStyle.box,
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                    controller.pinValue = pin;
                  }),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CountdownTimer(
                  endTime: controller.endTime,
                  endWidget: Text("Resend your otp number"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: Get.width,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                    primary: Color(0xff192252),
                  ),
                  onPressed: () {
                    controller.verifOtp();
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive OTP number? ",
                        style: TextStyle(
                          color: Color(0xff192252),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Resend",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff192252),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
