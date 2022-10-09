import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:slicing/app/routes/app_pages.dart';

class OtpController extends GetxController {
  //TODO: Implement OtpController

  final otpController = OtpFieldController();
  var pinValue = "";
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;



  verifOtp(){
    if(pinValue != ''){
      if(pinValue == "1234"){
        Get.offAllNamed(Routes.HOME);
      }else{
        Get.snackbar("Invalid Otp", "please check your correct otp number");
      }
    }else{
      Get.snackbar("Invalid Otp", "please enter your otp number");
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
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
