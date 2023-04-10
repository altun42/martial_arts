import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  RxInt imageIndex = 0.obs;
  RxInt focusedIndex = 0.obs;
  @override
  void onInit() {
    focusedIndex.value=5;
    super.onInit();
  }
 

}