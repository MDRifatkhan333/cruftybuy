import 'package:cruftybuy/data/service/emailVerification_controller.dart';
import 'package:get/get.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(EmailVerificationController());
  }
}
