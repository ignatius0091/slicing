import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:slicing/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
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
                'Nice to know you!',
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
                'It\'s your first time to use Pikbil',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Color(0xff192252),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Full name',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff192252),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: Color(0xff192252),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xff192252),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xff192252),
                    ),
                  ),
                  hintText: "Your full name",
                ),
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Email address',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff192252),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: Color(0xff192252),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xff192252),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xff192252),
                    ),
                  ),
                  hintText: "Your email address",
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff192252),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: Color(0xff192252),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xff192252),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xff192252),
                    ),
                  ),
                  hintText: "Your password",
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: Get.width,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                    primary: Color(0xff192252),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color(0xff192252),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "or login with",
                    style: TextStyle(
                      color: Color(0xff192252),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: GFAvatar(
                            child: Image.asset(
                              'assets/google.png',
                              width: 30,
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: GFAvatar(
                            child: Image.asset(
                              'assets/facebook.png',
                              width: 30,
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have a Pikbil account? ",
                        style: TextStyle(
                          color: Color(0xff192252),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Login",
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
