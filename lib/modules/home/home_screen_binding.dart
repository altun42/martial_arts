import 'package:get/get.dart';
import 'package:martial_arts/modules/home/home_screen_controller.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());

  }

}