import 'package:get/get.dart';
import 'package:crud_database/pages/home/controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}