import 'package:get/get.dart';
import 'package:crud_database/pages/create/controller.dart';

class CreatePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePageController());
  }
}