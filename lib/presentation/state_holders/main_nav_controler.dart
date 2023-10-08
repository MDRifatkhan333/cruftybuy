import 'package:get/get.dart';

class MainNavContoler extends GetxController {
  int currentIndex = 0;
  void changeScreen(int index) {
    currentIndex = index;
    update();
  }

  void changeScreenToHome() {
    currentIndex = 0;
    update();
  }
}
