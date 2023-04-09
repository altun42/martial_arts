import 'package:get/get.dart';
import 'package:martial_arts/modules/martialDetail/martial_detail_controller.dart';

class MartialBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MartialDetailController>(() => MartialDetailController());
  }

}