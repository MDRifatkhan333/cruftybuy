import 'package:cruftybuy/data/service/emailVerification_controller.dart';
import 'package:cruftybuy/presentation/state_holders/main_nav_controler.dart';
import 'package:get/get.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainNavContoler());
    Get.put(EmailVerificationController());
  }
}
